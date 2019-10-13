<%@ Page Title="Computing" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Computing.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 660px;
            height: 367px;
        }
        .auto-style2 {
            width: 660px;
            height: 344px;
        }
        .auto-style3 {
            width: 660px;
            height: 379px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Computing Courses</h1>
    <h2>Here are the higher education computing courses supplied by Chesterfield College:</h2>
    <p>&nbsp;</p>
    <a href="ComputerSoftware.aspx"><img src="Images/software.jpg" class="auto-style1" /></a>
    <br />
    <h3><a href="ComputerSoftware.aspx">FdSc Computer Software</a></h3>
        <p>&nbsp;</p>
    <a href="ComputerHardware.aspx"><img src="Images/ether.jpg" class="auto-style2" /></a>
    <br />
    <h2><a href="ComputerHardware.aspx">FdSc Computer Networks</a></h2>
        <p>&nbsp;</p>
    <a href="Softwarebsc.aspx"><img src="Images/softwareguy.jpg" class="auto-style1" /></a>
    <br />
    <h3><a href="Softwarebsc.aspx">BSc Computer Software (Top Up)</a></h3>
        <p>&nbsp;</p>
    <a href="Hardwarebsc.aspx"><img src="Images/modem.jpg" class="auto-style2" /></a>
    <br />
    <h2><a href="Hardwarebsc.aspx">BSc Computer Networks (Top Up)</a></h2>
        <p>&nbsp;</p>
    <a href="GamesDesign.aspx"><img src="Images/games.jpg" class="auto-style3" /></a>
    <br />
    <h3><a href="GamesDesign.aspx">HND Games Design</a></h3>
    <p>&nbsp;</p>
</asp:Content>

