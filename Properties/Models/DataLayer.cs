using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Properties.Models;

namespace Properties.Models
{
    public class Datalayer
    {
        //SqlConnection con = new SqlConnection("Data Source=PC3;Initial Catalog=PropertiesDB;Integrated Security=True");
      public string connectionString = "Data Source=PC6;Initial Catalog=PropertiesDB;Integrated Security=True";

        private DataTable executeProcedureForDataTableWithOutParameter(string procedureName, SqlParameter[] parameters)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(procedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    if (parameters != null && parameters.Length > 0)
                    {
                        command.Parameters.AddRange(parameters);
                    }

                    DataTable dataTable = new DataTable();

                    connection.Open();

                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                    {
                        dataAdapter.Fill(dataTable);
                    }

                    return dataTable;
                }
            }
        }
        //Code by AjayKumar
        internal DataTable Getstate(string procedure)
        {
            SqlParameter[] par = new SqlParameter[0];
            return executeProcedureForDataTableWithOutParameter(procedure, par);
        }
        internal DataTable getDistrictByState(string state)
        {
            return executeProcedureForDataTableWithParameter("proc_district", state);
        }
        public DataTable executeProcedureForDataTableWithParameter(string procedure, string state)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand(procedure, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@stateid", state);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(dt);
                }

                conn.Close();
            }

            return dt;
        }
        internal DataTable getcitybyDistrict(string district)
        {

            return executeProcedureForDataTableWithparameter("proc_city", district);
        }

        public DataTable executeProcedureForDataTableWithparameter(string procedure, string district)
        {
            DataTable dataTable = new DataTable();
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                using (SqlCommand cmd = new SqlCommand(procedure, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@districtid", district);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(dataTable);
                }
                conn.Close();
            }
            return dataTable;
        }

        public bool VenderRegistration(Vindor_Registration vr)
        {

            {
               
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand("InsertUserData", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@First_Name", vr.First_Name);
                command.Parameters.AddWithValue("@Last_Name", vr.Last_Name);
                command.Parameters.AddWithValue("@Email_Id", vr.Email_Id);
                command.Parameters.AddWithValue("@Mobile", vr.Mobile);
                command.Parameters.AddWithValue("@Gender", vr.Gender);
                command.Parameters.AddWithValue("@State", vr.State);
                command.Parameters.AddWithValue("@District", vr.District);
                command.Parameters.AddWithValue("@City_location",vr.CityLocation);
              
                command.Parameters.AddWithValue("@Pincode", vr.Pincode);
                command.Parameters.AddWithValue("@Password", vr.Password);
                command.Parameters.AddWithValue("@Re_Password", vr.Re_Password);
                command.Parameters.AddWithValue("@IsActive", 1);
                command.Parameters.AddWithValue("@DateTime", DateTime.Now);
                con.Open();
             int i=   command.ExecuteNonQuery();
               
                if (i > 0)
                {
                    return true;
                }
              else
                {
                    return false;
                }
                con.Close();
               
            }
            
        }
        public DataTable GetPropertyType(string procedureName)
            {
                SqlParameter[] parameters = new SqlParameter[0];
                return executeProcedureForDataTableWithOutParameter(procedureName, parameters);
            }




        internal DataTable propertybuydetail(string procedure)
        {
            SqlParameter[] par = new SqlParameter[0];
            return executeProcedureForDataTableWithOutParameter(procedure, par);
        }

        internal DataTable propertyalldetail(string procedure)
        {
            SqlParameter[] par = new SqlParameter[0];
            return executeProcedureForDataTableWithOutParameter(procedure, par);
        }








    }
}