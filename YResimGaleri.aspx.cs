using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1912901057_AtakanCetinkaya
{
    public partial class YResimGaleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYeni_Click(object sender, EventArgs e)
        {
            lblRn.Text = "";
            txtAciklama.Text = "";
            Image1.ImageUrl = "";
            btnKaydet.Visible = false;
            btnEkle.Visible = true;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string dosyaAdi = FileUpload1.FileName;
                string uzanti = dosyaAdi.Substring(dosyaAdi.LastIndexOf("."));

                OleDbCommand cmd = VeriTabani.KomutOlustur("insert into resimGaleri (uzanti, aciklama) values (@uzanti, @aciklama)");
                cmd.Parameters.AddWithValue("@uzanti", uzanti);
                cmd.Parameters.AddWithValue("@aciklama", txtAciklama.Text);
                cmd.ExecuteNonQuery();

                cmd.CommandText = "SELECT @@IDENTITY";
                string rn = cmd.ExecuteScalar().ToString();

                FileUpload1.SaveAs(Server.MapPath("resimGaleri/" + rn + uzanti));
                Image1.ImageUrl = "resimGaleri/" + rn + uzanti;
            }
        }

        protected void btnDuzenle_Click(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {

        }
    }
}