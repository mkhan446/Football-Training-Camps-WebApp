<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopRated.aspx.cs" Inherits="mkhan446_assignment4.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="text-align: center; width: 1650px">
            Top Rated Athletes</h1>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="38px" style="text-align: center" 
        Width="1646px">
        <asp:Label ID="Label1" runat="server" Text="Enter Position (Required):"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" 
            Text="Enter TrainingCamp Name (Required):"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server">
            <p style="width: 1643px">
                <asp:Label ID="Label3" runat="server" Text="Select Ordering Criteria:"></asp:Label>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="FortyYardDash Time" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="ShuttleRun Time" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="ThreeConeDrill Time" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="BenchPressReps Completed" />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="VerticalJump Height" />
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                    Text="BroadJumpDistance" />
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Weight" />
                <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Height" />
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="GPA" />
                <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                    Text="StarRating" />
            </p>
        </asp:Panel>
        <asp:GridView ID="GridView1" runat="server" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="43px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName,  f.timeCompleted AS FortyYardDashTime, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime, b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY f.timeCompleted DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="'%'" Name="position" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" DefaultValue="'%'" Name="tc.name" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, t.timeCompleted as ThreeConeDrillTime, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime,   s.timeCompleted AS ShuttleRunTime, b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY t.timeCompleted DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, s.timeCompleted AS ShuttleRunTime, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime,  t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY s.timeCompleted DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName,  b.numberOfRepsCompleted AS BenchPressRepsCompleted,dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,   v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY b.numberOfRepsCompleted DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, v.heightJumped AS VerticalJump, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted,  br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY v.heightJumped DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, br.distanceJumped AS BroadJump, dateOfBirth, weight, height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY br.distanceJumped DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, weight, dateOfBirth,  height, position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY weight DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, height, weight, dateOfBirth,   position, GPA, graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY height DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, GPA, height, weight, dateOfBirth,   position,  graduationYear, emailAddress, a.address, phoneNumber, totalScore, starRating,  tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY GPA DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" SelectCommand="SELECT a.athleteNo, fName, lName, starRating, GPA, height, weight, dateOfBirth,   position,  graduationYear, emailAddress, a.address, phoneNumber, totalScore,   tc.name AS TrainingCampName,  f.timeCompleted AS FortyYardDashTime, s.timeCompleted AS ShuttleRunTime, t.timeCompleted as ThreeConeDrillTime,  b.numberOfRepsCompleted AS BenchPressRepsCompleted, v.heightJumped AS VerticalJump, br.distanceJumped AS BroadJump
FROM Athlete a, AthletesInTrainingCamps ac, TrainingCamp tc, FortyYardDash f, ShuttleRun s, ThreeConeDrill t,BenchPress b, VerticalJump v, BroadJump br
WHERE a.athleteNo=ac.athleteNo AND ac.trainingCampID=tc.trainingCampID AND a.athleteNo=f.athleteNo AND a.athleteNo=s.athleteNo AND a.athleteNo=t.athleteNo AND a.athleteNo=b.athleteNo AND a.athleteNo=v.athleteNo AND a.athleteNo=br.athleteNo AND position=? AND tc.name=?
ORDER BY starRating DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" 
                DefaultValue="'%'" Name="position" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" 
                DefaultValue="'%'" Name="tc.name" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
