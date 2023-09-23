using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;
using System.Windows.Forms;

namespace AddProduct
{
    public partial class DataUploading : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ToString());
        string Query, code;
       // DataAdapter adp;
        SqlCommand cmd;
      //  DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            Query = "insert into StudentDetail(sname, sdgree, sintrest,sphone,smail,sexp,sphoto) values(@sname,@sdgree,@sintrest,@sphone, @smail,@sexp,@sphoto)";

            cmd = new SqlCommand(Query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@sname", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@sdgree", txtdegree.Text.Trim());
            cmd.Parameters.AddWithValue("@sintrest", txtintrest.Text.Trim());
            cmd.Parameters.AddWithValue("@sphone", txtphone.Text);
            cmd.Parameters.AddWithValue("@smail", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@sexp", txtexp.Text);


            string imgpath = Guid.NewGuid().ToString() + FileUpload1.FileName;
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "//img//" + imgpath.ToString());
            cmd.Parameters.AddWithValue("@sphoto", imgpath);

            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            cmd.ExecuteNonQuery();
            MessageBox.Show("Data Has Been Inserted ");
           Response.AddHeader("refresh", "1");


            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

        }

        void Display()
        {
            /* Query = " Select * from StudentDetail where is = '" + code + "'";
             adp = new SqlDataAdapter(Query, conn);
             DataTable dt = new DataTable();
             DataSet ds = new DataSet();
             adp.Fill(ds);
             DataList1.DataSource = ds;

             DataList1.DataBind();*/

            Query = "select * from StudentDetail";
           SqlDataAdapter adp = new SqlDataAdapter(Query, conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();   


        }
    }
}