<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getAverage.aspx.cs" Inherits="mkhan446_assignment4.getAverage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="text-align: center">
        Get Training Camp Averages</h1>
    <asp:Panel ID="Panel1" runat="server" style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="Enter TrainingCamp ID:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Get Averages" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="564px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT tc.name, COUNT(DISTINCT ac.athleteNo) AS TOTALNUMBEROFATHLETES, ROUND(AVG(a.GPA),2) AS AVEGPA, AVG(a.totalScore) AS AVETOTALSCORE, AVG(f.timeCompleted) AS AVEFORTYYARDDASH, AVG(s.timeCompleted) AS AVESHUTTLERUN, AVG(t.timeCompleted) AS AVETHREECONEDRILL, AVG(b.numberOfRepsCompleted) AS AVEBENCHPRESS, AVG(v.heightJumped) AS AVGVERTICALJUMP, AVG(br.distanceJumped) AS AVEBROADJUMP
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND ac.athleteNo=f.athleteNo AND ac.athleteNo=s.athleteNo AND ac.athleteNo=t.athleteNo AND ac.athleteNo=b.athleteNo AND ac.athleteNo=v.athleteNo AND ac.athleteNo=br.athleteNo AND tc.trainingCampID = ?
GROUP BY tc.name
ORDER BY tc.name
">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="trainingCampID" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
    </asp:Panel>
    </form>
</body>
</html>
