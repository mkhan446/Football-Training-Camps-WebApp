<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="mkhan446_assignment4.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            Insert Athlete</h1>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="34px">
        <asp:Label ID="Label1" runat="server" Text="Enter athleteNo:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Enter First Name:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Enter Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Enter Date of Birth:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Enter Weight:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="39px">
        <asp:Label ID="Label6" runat="server" Text="Enter Height:"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Enter Position:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="Enter GPA:"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Text="Enter Graduation Year:"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Text="Enter Email Address:"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="39px">
        <asp:Label ID="Label11" runat="server" Text="Enter Address:"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Text="Enter Phone Number:"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" Text="Enter Total Score:"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Text="Enter Star Rating:"></asp:Label>
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SE3309ConnectionString %>" InsertCommand="INSERT INTO ATHLETE VALUES(

 ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?)
" ProviderName="<%$ ConnectionStrings:SE3309ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM Athlete">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="newparameter1" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="newparameter2" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="newparameter3" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="newparameter4" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="newparameter5" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="newparameter6" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="newparameter7" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox9" Name="newparameter8" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox10" Name="newparameter9" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox11" Name="newparameter10" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox12" Name="newparameter11" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox13" Name="newparameter12" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox14" Name="newparameter13" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox15" Name="newparameter14" 
                    PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Enter" />
        <asp:Panel ID="Panel4" runat="server" Height="27px" style="text-align: center">
            <asp:Label ID="Label15" runat="server"></asp:Label>
        </asp:Panel>
    </asp:Panel>
    </form>
</body>
</html>
