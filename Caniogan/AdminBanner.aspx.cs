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
    public partial class AdminBanner : System.Web.UI.Page
    {
        ConnectionClass connect = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                connect.conn.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("Select * FROM tblBanner", connect.conn);
                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    imgBanner.Src = (myReader["strBannerPath"].ToString());

                }

                connect.conn.Close();
            }

        }

        protected void btnBanUp_Click(object sender, EventArgs e)
        {
            try
            {
                if (BannerFile.PostedFile != null && BannerFile.PostedFile.ContentLength > 0)
                {
                    string filename = Path.GetFileName(BannerFile.PostedFile.FileName);
                    var fu = Path.Combine(Server.MapPath("~/BannerImages/"), filename);
                    BannerFile.PostedFile.SaveAs(fu);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connect.conn;
                    string path = "~\\BannerImages\\" + filename.Trim();
                    SqlCommand da = new SqlCommand("UPDATE tblBanner SET strBannerPath='" + path + "' WHERE intBannerID=1", connect.conn);
                    da.CommandType = CommandType.Text;
                    connect.conn.Open();
                    da.ExecuteNonQuery();
                    connect.conn.Close();

                    Response.Redirect("AdminBanner.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }
    }
}