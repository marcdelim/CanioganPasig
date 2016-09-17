using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Caniogan
{
    public class ConnectionClass
    {
        public SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\dbCaniogan.mdf;Integrated Security = True");
    }
}