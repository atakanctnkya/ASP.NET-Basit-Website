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
    public partial class Yorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblYorumGuvenlik.Text = KodUret();
            }
            string KodUret()
            {
                Random r = new Random();
                return r.Next(10000, 99999).ToString();
            }
        }
        
       

    protected void btnYorumEkle_Click(object sender, EventArgs e)
        {
            if (lblYorumGuvenlik.Text == txtYorumGuvenlik.Text)
            {
                OleDbCommand cmd = VeriTabani.KomutOlustur("insert into yorum (konu, yorum)" + "values (@konu, @yorum)");

                cmd.Parameters.AddWithValue("@konu", txtKonu.Text);
                cmd.Parameters.AddWithValue("@yorum", txtYorum.Text);
               
                VeriTabani.KomutCalistir(cmd);

                lblYorumUyari.Text = "Yorum başarıyla eklenmiştir.";
            }
            else
            {
                lblYorumUyari.Text = "Güvenlik sözcüğü yanlış";
            }
        }
    }
}