<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeByDept.aspx.cs" Inherits="EMS.EmployeeByDept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Employees By Department</h2>

    <div>Select Department<asp:DropDownList ID="DropDownListDepts" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
        <br />
        <br />
        <asp:Label ID="LabelDeptName" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridViewEmployees" runat="server">
        </asp:GridView>
    </div>
</asp:Content>
