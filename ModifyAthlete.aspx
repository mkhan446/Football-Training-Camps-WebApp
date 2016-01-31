<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyAthlete.aspx.cs" Inherits="mkhan446_assignment4.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align: center; width: 1367px;">
        Modify Athlete</h1>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="94px" style="text-align: center" 
        Width="1368px">
        <asp:Label ID="Label1" runat="server" Text="Enter athleteNo:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Enter New First Name:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Modify First Name" />
        <asp:Label ID="Label9" runat="server" Text="Enter New Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Modify Last Name" 
            onclick="Button2_Click" />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Enter New Weight:"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Modify Weight" />
        <asp:Label ID="Label11" runat="server" Text="Enter New Height:"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Modify Height" />
        <asp:Label ID="Label12" runat="server" Text="Enter New Position:"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Modify Position" />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Enter New Email Address:"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
            Text="Modify Email Address" />
        <asp:Label ID="Label15" runat="server" Text="Enter New Address:"></asp:Label>
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
            Text="Modify Address" />
        <asp:Label ID="Label14" runat="server" Text="Enter New Phone Number:"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
            Text="Modify Phone Number" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="36px" style="text-align: center" 
        Width="1371px">
        <asp:Label ID="Label8" runat="server"></asp:Label>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET fName = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox8" Name="fName" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET lName = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox9" Name="lName" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET weight = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox10" Name="weight" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET height = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox11" Name="height" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET position = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox12" Name="position" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET emailAddress = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox13" Name="emailAddress" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET address = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox15" Name="address" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM ATHLETE" UpdateCommand="UPDATE Athlete
SET phoneNumber = ?
WHERE athleteNo = ?">
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox14" Name="phoneNumber" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox1" Name="athleteNo" 
                PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
