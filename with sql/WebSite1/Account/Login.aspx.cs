using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
            string kullaniciAdi = TextBox1.Text;
            string sifre = TextBox2.Text;
            if (kullaniciAdi.Trim() == null || sifre.Trim() == null) {
                
                Response.Redirect("Login.aspx");
            }

            SqlConnection baglanti = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM profile WHERE username='" + kullaniciAdi + "' AND passwd='" + sifre + "'", baglanti);
            SqlDataReader veri = komut.ExecuteReader();
            if (veri.Read())
            {
                
                   // Session Ata
                    Session["kullanici"] = veri["username"].ToString();
               //Session["kullanici"] = TextBox1.Text;
                    Response.Redirect("~/Default.aspx");
            }
            else
            {

                
                Response.Redirect("Login.aspx");   
            }
            //Veritabanına bağlan
            //Sorguyu çalıştır
            //Eğer kayit varsa giriş yap
            //Kayit yoksa hatayı yazdır.
        }
    
}