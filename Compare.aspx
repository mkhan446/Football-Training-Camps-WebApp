<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compare.aspx.cs" Inherits="mkhan446_assignment4.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <h1 style="width: 2401px">
            Compare Athletes</h1>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="33px" style="text-align: center" 
        Width="2399px">
        <asp:Label ID="Label1" runat="server" 
    Text="Enter Athlete #1's First Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Enter Athlete #1's Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enter" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="38px" style="text-align: center" 
        Width="2399px">
        <asp:Label ID="Label3" runat="server" Text="Enter Athlete #2's First Name:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Enter Athlete #2's Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Enter" runat="server" Text="Enter" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="33px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime, b.numberOfRepsCompleted, v.heightJumped, br.distanceJumped
FROM &quot;MKHAN446&quot;.&quot;ATHLETE&quot; a, &quot;MKHAN446&quot;.&quot;ATHLETESINTRAININGCAMPS&quot; ac, &quot;MKHAN446&quot;.&quot;TRAININGCAMP&quot; tc, &quot;MKHAN446&quot;.&quot;FORTYYARDDASH&quot; f, &quot;MKHAN446&quot;.&quot;SHUTTLERUN&quot; s, &quot;MKHAN446&quot;.&quot;THREECONEDRILL&quot; t, &quot;MKHAN446&quot;.&quot;BENCHPRESS&quot; b, &quot;MKHAN446&quot;.&quot;VERTICALJUMP&quot; v, &quot;MKHAN446&quot;.&quot;BROADJUMP&quot; br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND fName=? AND lName=?
">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="fName" 
                    PropertyName="Text" DbType="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="lName" 
                    PropertyName="Text" DbType="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="97px" style="margin-bottom: 41px">
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" Height="138px">
        <asp:Panel ID="Panel5" runat="server" Height="36px">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
                
                
                ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime, b.numberOfRepsCompleted, v.heightJumped, br.distanceJumped
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND fName=? AND lName=?
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="fName" PropertyName="Text" 
                        DbType="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="lName" PropertyName="Text" 
                        DbType="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource2">
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    </form>
</body>
</html>
