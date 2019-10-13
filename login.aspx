<%@ Page Title="Login to CCUC" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Login to Chesterfield College University Centre</h1>
        <asp:LoginView ID="LoginView2" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a new account at CCUC." CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/MyProfile.aspx">
                </asp:Login>
                <br>
                <br></br>
                <br>
                <br></br>
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                    <MailDefinition Subject="Your New Password for PlanetWrox.com">
                    </MailDefinition>
                </asp:PasswordRecovery>
                </br>
                </br>

            </AnonymousTemplate>
            <LoggedInTemplate>
                You are already logged in!
            </LoggedInTemplate>
    </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>