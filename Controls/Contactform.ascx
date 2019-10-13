<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Contactform.ascx.cs" Inherits="Controls_Contactform" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>

<script>
  function validatePhoneNumbers(source, args)
  {
    var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
    var phoneBusiness = document.getElementById('<%= PhoneMobile.ClientID %>');
    if (phoneHome.value != '' || phoneBusiness.value != '')
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
</script>

<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">Use this form to get in touch with us. Please enter your email address, full name, and your home or mobile number along with your message.</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="Name" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" ControlToValidate="Name" CssClass="ErrorMessage" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Email Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="215px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an email address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Email Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="215px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the email address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="The email addresses don't match.">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Home Phone </td>
        <td>
            <asp:TextBox ID="PhoneHome" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home phone or mobile phone number." OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Mobile Phone</td>
        <td>
            <asp:TextBox ID="PhoneMobile" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Message</td>
        <td>
            <asp:TextBox ID="Message" runat="server" Height="97px" TextMode="MultiLine" Width="215px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Message" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your message">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please Correct the following errors:" ShowSummary="False" ShowMessageBox="True" />
        </td>
    </tr>
</table>
<asp:Label ID="Mail" runat="server" Text="Message Sent" Visible="false" />
