<%@ Page Title="Courses" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 660px;
            height: 354px;
        }
        .auto-style2 {
            width: 660px;
            height: 345px;
        }
        .auto-style3 {
            width: 660px;
            height: 378px;
        }
        .auto-style4 {
            width: 660px;
            height: 350px;
        }
        .auto-style5 {
            width: 660px;
            height: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<h1>Departments</h1>
    <h2>Here are the higher education courses supplied by Chesterfield College University Centre:</h2>
    <p>&nbsp;</p>
    <a href="Computing.aspx"><img src="Images/softwareguy.jpg" class="auto-style1" /></a>
    <br />
    <h3><a href="Computing.aspx">Computing</a></h3>
        <p>&nbsp;</p>
    <p>&nbsp;</p>

    <a href="Education.aspx"><img src="Images/Edu.jpg" class="auto-style4" /></a>
    <br />
    <h2><a href="Education.aspx">Education Studies</a></h2>
        <p>&nbsp;</p>

       <p>&nbsp;</p>

    <a href="PublicServices.aspx"><img src="Images/police.jpg" class="auto-style5" /></a>
    <br />
    <h2><a href="PublicServices.aspx">Public Services</a></h2>
        <p>&nbsp;</p>

       <p>&nbsp;</p>

    <a href="Health.aspx"><img src="Images/health.jpg" class="auto-style2" /></a>
    <br />
    <h2><a href="Health.aspx">Health and Social Care</a></h2>
        <p>&nbsp;</p>

    <a href="Construction.aspx"><img src="Images/construction.jpg" class="auto-style3" /></a>
    <br />
    <h3><a href="Construction.aspx">Construction and Engineering</a></h3>
    <p>&nbsp;</p>
</asp:Content>