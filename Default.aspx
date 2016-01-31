<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="mkhan446_assignment4._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Football Scouting Application</h2>
    <asp:Panel ID="Panel1" runat="server" Height="498px" 
    style="text-align: center">
        Select one of the following options:<asp:Panel ID="Panel7" runat="server" 
            Height="97px" style="margin-top: 18px">
            <ul>
                <li style="text-align: left"><a href="Compare.aspx">Compare two Athletes by name</a></li>
                <li style="text-align: left"><a href="TopRated.aspx">Show top Athletes based on a certain criteria</a></li>
                <li style="text-align: left"><a href="Insert.aspx">Retrieve averages based on some criteria</a></li>
                <li style="text-align: left"><a href="ModifyAthlete.aspx">Insert new Athlete or TrainingCamp</a></li>
                <li style="text-align: left"><a href="getAverage.aspx">Modify Athlete or TrainingCamp</a><asp:Panel 
                        ID="Panel8" runat="server" Height="32px" 
                        style="text-align: right; margin-top: 338px">
       
                    <asp:Button ID="Quit" runat="server" Text="Quit" />
                    </asp:Panel>
                </li>
            </ul>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

