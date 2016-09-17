using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Caniogan
{
    public partial class AdminMV : System.Web.UI.Page
    {
        ConnectionClass connect = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                connect.conn.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("Select * FROM tblMission", connect.conn);
                myReader = myCommand.ExecuteReader();


                while (myReader.Read())
                {
                    headerMiss.InnerText = (myReader["strMissionDesc"].ToString());
                    txtMiss.Value = (myReader["strMissionDesc"].ToString());
                   
                }

                connect.conn.Close();
            }

            if (!Page.IsPostBack)
            {
                connect.conn.Open();
                SqlDataReader myVisReader = null;           
                SqlCommand myVisCommand = new SqlCommand("Select * FROM tblVision", connect.conn);
                myVisReader = myVisCommand.ExecuteReader();

                while (myVisReader.Read())
                {
                    headerVis.InnerText = (myVisReader["strVisionDesc"].ToString());
                    txtVis.Value = (myVisReader["strVisionDesc"].ToString());
                }

                connect.conn.Close();
            }

        }

        protected void btnMUp_Click(object sender, EventArgs e)
        {

                try
                {
                    SqlCommand sqlTxt = new SqlCommand("UPDATE tblMission SET strMissionDesc = '" + txtMiss.Value + "' WHERE intMissionID = 1", connect.conn);
                    connect.conn.Open();
                    sqlTxt.ExecuteNonQuery();
                    connect.conn.Close();
                    Response.Redirect("AdminMV.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
        }

        protected void btnVUp_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand sqlTxt = new SqlCommand("UPDATE tblVision SET strVisionDesc = '" + txtVis.Value + "' WHERE intVisionID = 1", connect.conn);
                connect.conn.Open();
                sqlTxt.ExecuteNonQuery();
                connect.conn.Close();
                Response.Redirect("AdminMV.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}