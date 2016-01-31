using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mkhan446_assignment4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*String athNo = TextBox1.Text;
            String attr = TextBox7.Text;
            String value = TextBox8.Text;

            SqlDataSource1.UpdateCommand = @"UPDATE ATHLETE SET'@" + attr + "'='@" + value + "'WHERE athleteNo='@" + athNo + "'";
            Label8.Text = "Athlete Modified!";*/

            Label8.Text = "Athlete's First Name Modified!";

            

           SqlDataSource1.Update();                                 

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
            Label8.Text = "Athlete's Last Name Modified!";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource3.Update();
            Label8.Text = "Athlete's Weight Modified!";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Update();
            Label8.Text = "Athlete's Height Modified!";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource5.Update();
            Label8.Text = "Athlete's Position Modified!";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlDataSource6.Update();
            Label8.Text = "Athlete's Email Address Modified!";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlDataSource7.Update();
            Label8.Text = "Athlete's Address Modified!";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlDataSource9.Update();
            Label8.Text = "Athlete's Phone Number Modified!";
        }

    }
}