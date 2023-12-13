using Properties.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Properties.Controllers
{
    public class UserController : Controller
    {
        SqlConnection con = new SqlConnection("Data Source=pc6;Initial Catalog=PropertiesDB;Integrated Security=True");
        BusinessLayer businessLayer = new BusinessLayer();
        [HttpGet]
        public ActionResult Vindor_Registration()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Vindor_Registration(Vindor_Registration vr)
        {
            businessLayer.VenderRegistration(vr);
            return View();
        }
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
            public ActionResult Index(AllDetails ad, HttpPostedFileBase Profile_Pic)
        {
            string Path;
            if (Profile_Pic != null)
            {
                string pic = Profile_Pic.FileName;
                Path = System.IO.Path.Combine(Server.MapPath("~/Content/Pictures"), pic);
                Profile_Pic.SaveAs(Path);
                ad.Profile_Pic = pic;
            }
            SqlCommand cmd = new SqlCommand("User_Registration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", ad.Name);
            cmd.Parameters.AddWithValue("@Mobile", ad.UserMobile);
            cmd.Parameters.AddWithValue("@Email", ad.Email);
            cmd.Parameters.AddWithValue("@Profile_Pic", ad.Profile_Pic);
            cmd.Parameters.AddWithValue("@Password", ad.Password);
            cmd.Parameters.AddWithValue("@IsActive", 1);
            con.Open();
            cmd.ExecuteNonQuery();
            ModelState.Clear();
            con.Close();
            return RedirectToAction("Index");
        }

        public ActionResult About()
        {
            return View();
        }
       

        public ActionResult Proparty()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View();
        }

       

        public ActionResult Blogsingle()
        {
            return View();
        }

        public ActionResult Agentsingle()
        {
            return View();
        }
        public ActionResult Agentsgrid()
        {
            return View();
        }

       

 
        public ActionResult singleproperty(int id) 
        {
            string ID=id.ToString();
            AllDetails d = businessLayer.getpropertydetailbyid(ID);
            return View(d);
        }

        public ActionResult Contact_US() 
        {
            return View();
        }
        public ActionResult BuyProperty()
        {
            ViewBag.buyproperty = businessLayer.propertybuysearch();
            return View();
        }
    }
}