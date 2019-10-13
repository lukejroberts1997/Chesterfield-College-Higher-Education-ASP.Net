<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            width: 229px;
            height: 64px;
        }
        .auto-style4 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
            <asp:LoginName ID="LoginName1" runat="server" FormatString="<h1>Hi {0}!</h1> <br /> Not {0}?" />
  <asp:LoginView ID="LoginView1" runat="server">
    <LoggedInTemplate>
      (<asp:LoginStatus ID="LoginStatus1" runat="server" />)
    </LoggedInTemplate>
      </asp:LoginView>
      <p>&nbsp;</p>
            <p>The My Profile page allows you to make changes to your personal profile .</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="FirstName" runat="server" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="LastName" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="LastName" runat="server" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" Display="Dynamic" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="DateOfBirth" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="DateOfBirth" runat="server" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Date of birth is required."></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Enter a valid date." Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" AssociatedControlID="Bio" Text="Biography"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Bio" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="SaveButton" runat="server" OnClick="Button1_Click" Text="Save Profile" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        Profile Picture:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <img src="Controls/GetImage.aspx" width="100%" alt="profile image" />
          <asp:FileUpLoad id="FileUpLoad1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
          <br />
          <asp:Label ID="Label5" runat="server" Text="" ></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    
                    <td>
          <asp:Button id="UploadBtn" Text="Upload" CssClass="btn btn-default pull-right" OnClick="UploadBtn_Click" runat="server" Width="105px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>

