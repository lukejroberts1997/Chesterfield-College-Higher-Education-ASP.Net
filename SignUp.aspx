<%@ Page Title="SignUp at CCUC" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Sign Up For a New Acount at Chesterfield College Universtiy Centre</h1>
    <p>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/MyProfile.aspx">
            <MailDefinition BodyFileName="~/App_Data/SignUpConfirmation.txt" Subject="Your New Chesterfield College University Centre Account">
            </MailDefinition>
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </p>
</asp:Content>

