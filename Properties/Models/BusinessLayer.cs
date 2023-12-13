using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using Properties.Models;

namespace Properties.Models
{
    public class BusinessLayer
    {
        Datalayer Dtl = new Datalayer();
        public void VenderRegistration(Vindor_Registration vr)
        {
            Dtl.VenderRegistration(vr);
        }


        public Vindor_Registration GetallState()
        {

            DataTable dataTable = Dtl.Getstate("proc_getstate");
            List<Vindor_Registration> States = new List<Vindor_Registration>();
            foreach (DataRow row in dataTable.Rows)
            {
                Vindor_Registration states = new Vindor_Registration();
                states.Id = Convert.ToInt32(row["State_ID"]);
                states.State = row["State"].ToString();
                States.Add(states);
            }
            Vindor_Registration obj = new Vindor_Registration();
            obj.Binddisplay = States;
            return obj;
        }
        public Vindor_Registration getdistrictbystate(string state)
        {
            DataTable dataTable = Dtl.getDistrictByState(state);
            List<Vindor_Registration> District = new List<Vindor_Registration>();
            foreach (DataRow row in dataTable.Rows)
            {
                Vindor_Registration districtobj = new Vindor_Registration();
                districtobj.Id = Convert.ToInt32(row["District_Id"].ToString());
                districtobj.District = row["District"].ToString();
                District.Add(districtobj);
            }
            Vindor_Registration obj = new Vindor_Registration();
            obj.Binddisplay = District;
            return obj;

        }
        public Vindor_Registration getDistrictbyCity(string district)
        {
            DataTable dt = Dtl.getcitybyDistrict(district);
            List<Vindor_Registration> City = new List<Vindor_Registration>();
            foreach (DataRow row in dt.Rows)
            {
                Vindor_Registration cityobj = new Vindor_Registration();
                cityobj.Id = Convert.ToInt32(row["City_Id"].ToString());
                cityobj.CityLocation = row["City_Name"].ToString();
                City.Add(cityobj);


            }
            Vindor_Registration obj = new Vindor_Registration();
            obj.Binddisplay = City;
            return obj;
        }
        //code by Mukim
        public List<AllDetails> GetPropertyType()
        {
            try
            {
                DataTable dt = Dtl.GetPropertyType("GetPropertyType");
                List<AllDetails> details = new List<AllDetails>();

                foreach (DataRow item in dt.Rows)
                {
                    AllDetails allDetails = new AllDetails();
                    allDetails.Id = Convert.ToInt32(item["Type_Id"]);
                    allDetails.Type_Name = item["Type_Name"].ToString();
                    details.Add(allDetails);
                }

                return details;
            }
            catch (Exception ex)
            {
                return new List<AllDetails>();
            }
        }
        public AllDetails propertybuysearch()
        {

            DataTable dataTable = Dtl.propertybuydetail("Search_Property");
            List<AllDetails> BuyProperty = new List<AllDetails>();
            foreach (DataRow row in dataTable.Rows)
            {
                AllDetails buyProperty = new AllDetails();
                buyProperty.Type_Name = row["Type_Name"].ToString();
                buyProperty.Id = Convert.ToInt32(row["Property_Id"]);
                buyProperty.Owner_Name = row["Owner_Name"].ToString();
                buyProperty.State_Name = row["State"].ToString();
                buyProperty.District_Name = row["District"].ToString();
                buyProperty.Property_Location = row["City_Name"].ToString();
                buyProperty.Area = row["Area"].ToString();
                buyProperty.Price = row["Price"].ToString();
                buyProperty.Property_Location = row["Property_Location"].ToString();
                buyProperty.Description = row["Description"].ToString();
                buyProperty.Main_Image_Display = row["Main_Image"].ToString();
                buyProperty.Other_Image_Display = row["Other_Images"].ToString();
                BuyProperty.Add(buyProperty);

            }
            AllDetails obj = new AllDetails();
            obj.Details = BuyProperty;
            return obj;
        }


        //public AllDetails getpropertydetailbyid(int id)
        //{

        //    DataTable dataTable = Dtl.propertyalldetail("getpropertydetails");
        //    List<AllDetails> BuyProperty = new List<AllDetails>();
        //    foreach (DataRow row in dataTable.Rows)
        //    {
        //        AllDetails buyProperty = new AllDetails();
        //        buyProperty.Id = Convert.ToInt32(row["Id"].ToString());
        //        buyProperty.Type_Name = row["Type_Name"].ToString();
        //        buyProperty.Owner_Name = row["Owner_Name"].ToString();
        //        buyProperty.State_Name = row["State"].ToString();
        //        buyProperty.District_Name = row["District"].ToString();
        //        buyProperty.Property_Location = row["City_Name"].ToString();
        //        buyProperty.Area = row["Area"].ToString();
        //        buyProperty.Price = row["Price"].ToString();
        //        buyProperty.Property_Location = row["Property_Location"].ToString();
        //        buyProperty.Description = row["Description"].ToString();
        //        buyProperty.Main_Image_Display = row["Main_Image"].ToString();
        //        buyProperty.Other_Image_Display = row["Other_Images"].ToString();
        //        BuyProperty.Add(buyProperty);

        //    }
        //    AllDetails obj = new AllDetails();
        //    obj.Details = BuyProperty;
        //    return obj;
        //}

        public AllDetails getpropertydetailbyid(string id)
      { 

        AllDetails picture = null;
            
        using (SqlConnection conn = new SqlConnection(Dtl.connectionString))
        {
            conn.Open();

            using (SqlCommand command = new SqlCommand("clicksingleproperty", conn))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Property_Id", id.ToString());

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        picture = new AllDetails
                        {
                            Id = (int) reader["Property_Id"],
                           

                        };
                    }
                }
            }
        }

        return picture;
       }


    }

}