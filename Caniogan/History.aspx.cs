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
    public partial class Logo : System.Web.UI.Page
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
                }

                connect.conn.Close();
            }
        }
    }
}