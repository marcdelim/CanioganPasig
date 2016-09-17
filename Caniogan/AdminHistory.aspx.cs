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
    public partial class AdminHistory : System.Web.UI.Page
    {
        ConnectionClass connect = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                connect.conn.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("Select * FROM tblHistory", connect.conn);
                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    txtHisto.InnerText = (myReader["strHistoryDesc"].ToString());
                    txtHistoMod.Value = (myReader["strHistoryDesc"].ToString());
                }

                connect.conn.Close();
            }

        }


        protected void btnHisUp_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand sqlTxt = new SqlCommand("UPDATE tblHistory SET strHistoryDesc = '" + txtHistoMod.Value + "' WHERE intHistoryID = 1", connect.conn);
                connect.conn.Open();
                sqlTxt.ExecuteNonQuery();
                connect.conn.Close();
                Response.Redirect("AdminHistory.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}