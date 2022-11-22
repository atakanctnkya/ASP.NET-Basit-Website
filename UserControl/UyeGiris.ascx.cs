using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace _1912901057_AtakanCetinkaya.UserControl
{
    public partial class UyeGiris : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"] != null)
            {
                MultiView1.ActiveViewIndex = 1;
                lblAdSoyad.Text = Session["adSoyad"].ToString();
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            DataTable dt = VeriTabani.veriGetir("select * from kullanici where silindi = false and kullaniciAdi = '" + txtKullaniciAdi.Text + "'");
            if (dt.Rows.Count == 0)
            {
                txtKullaniciAdi.Text = "";
                txtParola.Text = "";
            }
            else
            {
                if (txtParola.Text == dt.Rows[0]["parola"].ToString())
                {
                    Session["uyeNo"] = dt.Rows[0]["uyeNo"];
                    Session["adSoyad"] = dt.Rows[0]["adi"].ToString() + " " + dt.Rows[0]["soyadi"].ToString();
                    Session["yetki"] = dt.Rows[0]["yetki"];
                    MultiView1.ActiveViewIndex = 1;
                    lblAdSoyad.Text = Session["adSoyad"].ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    txtKullaniciAdi.Text = "";
                    txtParola.Text = "";
                }
            }
        }

        protected void btnUnuttum_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnYeniUye_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = "0";
            Response.Redirect("UyeDetay.aspx");
        }

        protected void btnOturumuKapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            txtKullaniciAdi.Text = "";
            txtParola.Text = "";
            MultiView1.ActiveViewIndex = 0;
            Response.Redirect("Default.aspx");
        }

        protected void btnParolaGonder_Click(object sender, EventArgs e)
        {

        }

        protected void btnUyeBilgiGoster_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = Session["uyeNo"];
            Response.Redirect("UyeDetay.aspx");
        }

        
    }
}