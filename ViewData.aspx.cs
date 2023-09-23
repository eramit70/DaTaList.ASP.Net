using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddProduct
{
    public partial class ViewData : System.Web.UI.Page
    {


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ToString());
        string Query, code;
        // DataAdapter adp;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["code"] != null)
            {
                code = Request.QueryString["code"].ToString();

                if(!IsPostBack)
                {
                    Display();
                }
            }
        }

       
        void Display()
        {


           Query = "Select * from StudentDetail where sid = '" +code+ "' ";
          //  Query = "Select * from StudentDetail where sid = 2 ";

            //ViewData.aspx?code=1

            SqlDataAdapter adp = new SqlDataAdapter(Query,conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}