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
    public partial class AdminLogo : System.Web.UI.Page
    {
        ConnectionClass connect = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                connect.conn.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("Select * FROM tblLogo", connect.conn);
                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    imgLogo.Src = (myReader["strLogoPath"].ToString());

                }

                connect.conn.Close();
            }

        }

        protected void btnLogUp_Click(object sender, EventArgs e)
        {
            try
            {
                if (LogoFile.PostedFile != null && LogoFile.PostedFile.ContentLength > 0)
                {
                    string filename = Path.GetFileName(LogoFile.PostedFile.FileName);
                    var fu = Path.Combine(Server.MapPath("~/LogoImages/"), filename);
                    LogoFile.PostedFile.SaveAs(fu);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connect.conn;
                    string path = "~\\LogoImages\\" + filename.Trim();
                    SqlCommand da = new SqlCommand("UPDATE tblLogo SET strLogoPath='" + path + "' WHERE intLogoID=1", connect.conn);
                    da.CommandType = CommandType.Text;
                    connect.conn.Open();
                    da.ExecuteNonQuery();
                    connect.conn.Close();

                    Response.Redirect("AdminLogo.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }
    }
}