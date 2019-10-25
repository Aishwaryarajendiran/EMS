<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="EMS.EmployeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Employee List </h2><asp:GridView ID="GridViewEmpList" runat="server" AllowSorting="True" EmptyDataText="No Employees Found" Height="179px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100px" OnRowDeleting="GridViewEmpList_RowDeleting" DataKeyNames="Number">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        </asp:GridView>
   <script>
       $(document).on("click", "a", function () {
           if (this.innerHTML.indexOf("Delete") == 0) {
               return confirm("Are you sure you wnt to delete this record?");
           }
       });
   </script>
</asp:Content>
