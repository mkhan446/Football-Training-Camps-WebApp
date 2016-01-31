using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mkhan446_assignment4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DataBind();
            GridView1.DataSourceID = SqlDataSource1.ID;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            SqlDataSource11.DataBind();
            GridView1.DataSourceID = SqlDataSource11.ID;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource4.DataBind();
            GridView1.DataSourceID = SqlDataSource4.ID;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource3.DataBind();
            GridView1.DataSourceID = SqlDataSource3.ID;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource5.DataBind();
            GridView1.DataSourceID = SqlDataSource5.ID;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource6.DataBind();
            GridView1.DataSourceID = SqlDataSource6.ID;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlDataSource7.DataBind();
            GridView1.DataSourceID = SqlDataSource7.ID;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlDataSource8.DataBind();
            GridView1.DataSourceID = SqlDataSource8.ID;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlDataSource9.DataBind();
            GridView1.DataSourceID = SqlDataSource9.ID;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlDataSource10.DataBind();
            GridView1.DataSourceID = SqlDataSource10.ID;
        }
    }
}