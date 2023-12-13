using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using Properties.Models;
using System.Runtime.Remoting.Messaging;
using System.Drawing;
using System.IO;
using System.Web.UI.WebControls;

namespace Properties.Controllers
{
    public class VendorController : Controller
    {
        SqlConnection con = new SqlConnection("Data Source=PC6;Initial Catalog=PropertiesDB;Integrated Security=True");
        BusinessLayer businessLayer=new BusinessLayer();

        public object VIEWBAG { get; private set; }

        [HttpGet]
        public ActionResult Vindor_Registration()
        {
            ViewBag.showstate = businessLayer.GetallState();
            return View();
           
        }
        [HttpPost]
        public ActionResult Vindor_Registration(Vindor_Registration vr)
        {  
            businessLayer.VenderRegistration(vr);
            ModelState.Clear();
            return RedirectToAction("Vindor_Registration");
        }
        
        //code by Mukim
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginClass lc)
        {
            SqlCommand cmd = new SqlCommand("GetLogin",con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@Email", lc.UserName);
            cmd.Parameters.AddWithValue("@Password", lc.Password);
            SqlDataReader rdr = cmd.ExecuteReader();
            if(rdr.Read())
            {
                Session.Timeout = 5;
                Session["UserName"]=lc.UserName.ToString();
                return RedirectToAction("Property_Upload");
            }
            else
            {
                ViewData["Message"] = "Login Failed!";
            }
            con.Close();
            return View();
        }

        public ActionResult getdistrictbystate(string state)
        {
            Vindor_Registration district = businessLayer.getdistrictbystate(state);
            return Json(district, JsonRequestBehavior.AllowGet);
        }
        public ActionResult getCitybyDistrict(string district)
        {
            Vindor_Registration city = businessLayer.getDistrictbyCity(district);
            return Json(city, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        //code by Mukim
        public ActionResult Property_Upload()

        {
            if (Session["UserName"] != null)
            {
                ViewBag.showstate = businessLayer.GetallState();
                ViewBag.UserData = businessLayer.GetPropertyType();
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }

               
           
        }
    
        [HttpPost]
        public bool Property_Upload(AllDetails ad )
        {

            string Path = "";
            string Path1="";
            string pic = "";
            string pic1 = "";
            if (ad.Main_image != null)
            {
                 pic = ad.Main_image.FileName;
                Path = System.IO.Path.Combine(Server.MapPath("~/Content/Pictures"), pic);
                ad.Main_image.SaveAs(Path);
               
            }
            if (ad.Other_images!= null)
            {
                pic1 = ad.Other_images.FileName;
                Path1 = System.IO.Path.Combine(Server.MapPath("~/Content/Pictures"), pic);
                ad.Other_images.SaveAs(Path1);
               
            }
            SqlCommand cmd = new SqlCommand("Property_Upload", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Type_Id", ad.Type_Id);
            cmd.Parameters.AddWithValue("@Owner_Name", ad.Owner_Name);
            cmd.Parameters.AddWithValue("@Owner_Mobile_Number", ad.Owner_Mobile_Number);
            cmd.Parameters.AddWithValue("@Owner_Email", ad.Owner_Email);
            cmd.Parameters.AddWithValue("@State_Id", ad.State_Id);
            cmd.Parameters.AddWithValue("@District_Id", ad.District_Id);
            cmd.Parameters.AddWithValue("@City_Id", ad.City_Id);
            
            cmd.Parameters.AddWithValue("@Area", ad.Area);
            cmd.Parameters.AddWithValue("@Price", ad.Price);
            cmd.Parameters.AddWithValue("@Property_Location", ad.Property_Location);
            cmd.Parameters.AddWithValue("@Description", ad.Description);
            cmd.Parameters.AddWithValue("@Main_Image",pic);
            cmd.Parameters.AddWithValue("@Other_Images", pic1);
            cmd.Parameters.AddWithValue("@IsActive", 1);
           con.Open();
      int i=      cmd.ExecuteNonQuery();

            if (i > 0)
            {

                return true;
            }
            else { return false; }
            
         con.Close();
        }
       
        
    }


    //public ActionResult InsertContact(AllDetails details)
    //    {

    //        int i = 0;
    //        { 
    //        SqlCommand cmd = new SqlCommand("InsertContact", con);
    //            cmd.CommandType = CommandType.StoredProcedure;
    //            cmd.Parameters.AddWithValue("@Name", details.Name);
    //            cmd.Parameters.AddWithValue("@Email", details.Email);
    //            cmd.Parameters.AddWithValue("@Message", details.Message);
    //            con.Open();
    //            i = cmd.ExecuteNonQuery();
    //            if (i > 0)
    //            {
    //                return RedirectToAction("details");
    //            }
    //            else
    //            {
    //                System.Web.HttpContext.Current.Response.Write("<script language='javascript'>alert('Work Request Created.'" +  ");</script>");
    //            }
    //            con.Close();
    //        }
    //        return View(details);

    //    }


    //    public ActionResult Contact()
    //    {
    //        return View();
    //    }


    //    public ActionResult Details()
    //    {

    //        return View();
    //    }
 } 


