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
    public partial class _Default : Page
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
    }
}