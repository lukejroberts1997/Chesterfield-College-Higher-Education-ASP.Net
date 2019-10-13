<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Management_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Manage Courses</h1>
    <p>Here is the manage course page. A this point in time you can only view all the users registered on the site.</p>
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CourseId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="243px" Width="1200px" CssClass="auto-style1">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="CourseId" HeaderText="Course Id" ReadOnly="True" SortExpression="CourseId" />
        <asp:BoundField DataField="CourseTitle" HeaderText="Course Title" SortExpression="CourseTitle" />
        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
        <asp:BoundField DataField="MethodsOfAssesment" HeaderText="Methods Of Assesment" SortExpression="MethodsOfAssesment" />
        <asp:BoundField DataField="Overview" HeaderText="Overview" SortExpression="Overview" />
        <asp:BoundField DataField="OffstedFeedback" HeaderText="Offsted Feedback" SortExpression="OffstedFeedback" />
        <asp:BoundField DataField="EntryQualifications" HeaderText="Entry Qualifications" SortExpression="EntryQualifications" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CCUCDB %>" SelectCommand="SELECT [CourseId], [CourseTitle], [Department], [MethodsOfAssesment], [Overview], [OffstedFeedback], [EntryQualifications] FROM [Course]"></asp:SqlDataSource>
</asp:Content>

