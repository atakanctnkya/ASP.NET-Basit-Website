using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1912901057_AtakanCetinkaya
{
    public partial class YUye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGoster_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = GridView1.SelectedValue;
            Response.Redirect("UyeDetay.aspx");
        }
    }
}