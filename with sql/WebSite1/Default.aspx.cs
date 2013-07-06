using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection baglantim = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter adaptor = new SqlDataAdapter("select * from surveyQuestions", baglantim);
        DataTable tablom = new DataTable();
        adaptor.Fill(tablom);
        int a = (tablom.Rows.Count);
        int k = 1;
        while(k<a)
        {
            Label1.Text = tablom.Rows[k]["question"].ToString();
            k++;
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
