using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace _1912901057_AtakanCetinkaya
{
    public partial class YYorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYorumDetay_Click(object sender, EventArgs e)
        {
            Session["DetayYn"] = GridView1.SelectedValue;
            Response.Redirect("Yorum.aspx");
        }
    }
}