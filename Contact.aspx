<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register Src="~/Controls/Contactform.ascx" TagPrefix="CC" TagName="Contactform" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 802px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Contact page</h1>
    <p>Use the form bellow to get in conact with us. Alternatively call the switch board at 01246 500500 or drop by the reception in person at Infirmary Rd, Chesterfield S41 7NG.</p>
    <CC:Contactform runat="server" ID="Contactform" />
</asp:Content>

