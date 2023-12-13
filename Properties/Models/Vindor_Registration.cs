using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Properties.Models
{
    public class Vindor_Registration
    {
    public  List<Vindor_Registration> Binddisplay {  get; set; }
            public int Id { get; set; }
            public string First_Name { get; set; }
            public string Last_Name { get; set; }
            public string Email_Id { get; set; }
            public string Mobile { get; set; }
            public string Gender { get; set; }
            public string State { get; set; }
            public string District { get; set; }
            public string CityLocation{ get; set; }
           
            public string Pincode { get; set; }
            public string Password { get; set; }
            public string Re_Password { get; set; }
            public string IsActive { get; set; }
            public DateTime DateTime { get; set; }
        }

    }
