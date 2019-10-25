<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EMS.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add New Employee</h2>
    <table>
        <tr>
            <td>Name</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxName" runat="server" MaxLength="255"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Name is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Email is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td style="width: 205px">
                <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>TransGender</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonListGender" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Gender is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Department</td>
            <td style="width: 205px">
                <asp:DropDownList ID="DropDownListDept" runat="server" DataTextField="Name" DataValueField="DepartmentId">
                </asp:DropDownList>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListDept" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Department is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>Date Of Birth</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxDateOfBirth" runat="server" MaxLength="255" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDateOfBirth" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">DOB is Required</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBoxDateOfBirth" ErrorMessage="RangeValidator" ForeColor="#FF3300" Type="Date">DOB must be in the past</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Date Of Joining</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxDateOfJoining" runat="server" MaxLength="255" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxDateOfJoining" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">DOJ is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Manager</td>
            <td style="width: 205px">
                <asp:DropDownList ID="DropDownListManager" runat="server" DataTextField="Name" DataValueField="Number">
                </asp:DropDownList>
            </td>
            <td style="width: 231px">&nbsp;</td>
        </tr>
        <tr>
            <td>Phone</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxPhone" runat="server" TextMode="Phone" MaxLength="10"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Mobile Number is Required</asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="RangeValidator" ForeColor="#FF3300" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double">Phone number should be 10 digits</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Salary</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxSalary" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxSalary" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Salary is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Commission</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxCommission" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxCommission" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Commission is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>JobTitle</td>
            <td>
                <asp:DropDownList ID="DropDownListJobTitle" runat="server">
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>Analyst</asp:ListItem>
                    <asp:ListItem>SalesMan</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Tester</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Cashier</asp:ListItem>
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Senior Developer</asp:ListItem>
                    <asp:ListItem>CEO</asp:ListItem>
                    <asp:ListItem>COO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 231px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListJobTitle" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">JobTitle is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 205px">
                <asp:Button ID="ButtonCreate" runat="server" Text="Create" CssClass="bg-primary" OnClick="ButtonCreate_Click" />
            </td>
            <td style="width: 231px">
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="bg-warning" CausesValidation="False" OnClick="ButtonCancel_Click" />
            </td>
        </tr>

    </table>
</asp:Content>
