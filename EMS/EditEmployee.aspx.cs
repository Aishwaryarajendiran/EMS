using EMS_DAL;
using EMS_DAL.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListDept.DataSource = DAL.GetDepartments();
                DropDownListDept.DataBind();

                DropDownListManager.DataSource = DAL.GetEmployeeIdAndName();
                DropDownListManager.DataBind();
                DropDownListManager.Items.Add(new ListItem("--select--", "0"));
                DropDownListManager.SelectedValue = "0";

                RangeValidator2.MaximumValue = DateTime.Now.ToShortDateString();
                RangeValidator2.MinimumValue = DateTime.Now.AddYears(-100).ToShortDateString();
            }
        }

        protected void ButtonGetEmpById_Click(object sender, EventArgs e)
        {
            DataSet employee = DAL.GetEmployeeById(Convert.ToInt32(TextBoxEmpID.Text));

            //check
            if (employee.Tables[0].Rows.Count == 0)
            {
                //employee not found
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Employee does not exists');", true);
            }
            else
            {
                DataRow emprow = employee.Tables[0].Rows[0];

                TextBoxName.Text = emprow["Name"].ToString();
                RadioButtonListGender.SelectedValue = emprow["Gender"].ToString();
                TextBoxEmail.Text = emprow["Email"].ToString();
                DropDownListDept.SelectedValue = emprow["DepartmentNo"].ToString();
                TextBoxDateOfBirth.Text = Convert.ToDateTime(emprow["DateOfBirth"]).ToString("yyyy-MM-dd");
                TextBoxDateOfJoining.Text = Convert.ToDateTime(emprow["DateOfJoining"]).ToString("yyyy-MM-dd");
                if(!string.IsNullOrEmpty(emprow["ReportingTo"].ToString()))
                {
                DropDownListManager.SelectedValue = emprow["ReportingTo"].ToString();
                }
                TextBoxPhone.Text = emprow["Phone"].ToString();
                TextBoxSalary.Text = string.Format("{0:0}",emprow["Salary"]);
                TextBoxCommission.Text = string.Format("{0:0}",emprow["Commission"]);
                DropDownListJobTitle.SelectedItem.Text = emprow["JobTitle"].ToString();
            }
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            Employee employee = new Employee
            {
                Number = Convert.ToInt32(TextBoxEmpID.Text),
                Name = TextBoxName.Text,
                Email = TextBoxEmail.Text,
                Gender = RadioButtonListGender.SelectedItem.Text,
                DepartmentNo = Convert.ToInt32(DropDownListDept.SelectedItem.Value),
                DateOfBirth = Convert.ToDateTime(TextBoxDateOfBirth.Text),
                DateOfJoining = Convert.ToDateTime(TextBoxDateOfJoining.Text),
                ReportingTo = Convert.ToInt32(DropDownListManager.SelectedItem.Value),
                Phone = Convert.ToInt64(TextBoxPhone.Text),
                Salary = Convert.ToInt32(TextBoxSalary.Text),
                Commission = Convert.ToInt32(TextBoxCommission.Text),
                JobTitle = DropDownListJobTitle.SelectedItem.Text
            };

            bool result = DAL.UpdateEmployee(employee);

            if (result)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Employee updated successfully'); window.location='EmployeeList.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Failed to update Employee');", true);
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {

        }
    }
}