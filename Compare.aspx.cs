using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mkhan446_assignment4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlDataSource1.DataBind();
           /* string fname = TextBox1.Text;
            string lname = TextBox2.Text;

            SqlDataSource1.SelectCommand = @"SELECT a.athleteNo, fName, lName, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime, b.numberOfRepsCompleted, v.heightJumped, br.distanceJumped
                                            FROM ATHLETE a, ATHLETESINTRAININGCAMPS ac, TRAININGCAMP tc, FORTYYARDDASH f, SHUTTLERUN s, THREECONEDRILL t, BENCHPRESS b, VERTICALJUMP v, BROADJUMP br
                                            WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND fName='" +fname +"'AND lName='" +lname +"'"; */

        }

        protected void Enter_Click(object sender, EventArgs e)
        {
            SqlDataSource2.DataBind();
            /*string fname = TextBox3.Text;
            string lname = TextBox4.Text;

            SqlDataSource1.SelectCommand = @"SELECT a.athleteNo, fName, lName, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime, b.numberOfRepsCompleted, v.heightJumped, br.distanceJumped
                                            FROM ATHLETE a, ATHLETESINTRAININGCAMPS ac, TRAININGCAMP tc, FORTYYARDDASH f, SHUTTLERUN s, THREECONEDRILL t, BENCHPRESS b, VERTICALJUMP v, BROADJUMP br
                                            WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND fName='" + fname + "'AND lName='" + lname + "'"; */

        }
    }
}