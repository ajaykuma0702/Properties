using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Properties.Models
{
    public class AllDetails
    {

        public List<AllDetails> Details { get; set; }
        public int Id { get; set; }
        public int Type_Id { get; set; }
        public string Type_Name { get; set; }
        public string Owner_Name {  get; set; }        
        public string Owner_Mobile_Number { get; set;}
        public string Owner_Email {  get; set;}
        public int State_Id { get;set;}
        public string State_Name { get; set; } 
        public string District_Id { get; set;}
        public string District_Name { get; set; }
        public string City_Id { get;set;}
        public string Area {  get; set;}
        public string Price { get; set;}    
        public string Property_Location { get; set;}
        public string Description { get; set;}

        public HttpPostedFileBase Main_image { get; set; }
        public string Main_Image_Display {  get; set; }
        public HttpPostedFileBase Other_images { get; set; }
        public string Other_Image_Display { get; set; }
        public bool IsActive { get; set; }
        public List<AllDetails> alldata { get; set; }
      
        public string Name { get; set; }
        public string UserMobile { get; set; }
        public string Email { get; set; }
        public string Profile_Pic { get; set; }
        public string Password { get; set; }
    }
}