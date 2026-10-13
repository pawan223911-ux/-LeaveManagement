using System;
using System.Web;

namespace LeaveApplication
{
    public partial class LeaveForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["LeaveDate"] != null)
            {
                txtLeaveDate.Text = Session["LeaveDate"].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            Session["EmployeeID"] = txtEmployeeID.Text.Trim();
            Session["EmployeeName"] = txtEmployeeName.Text.Trim();
            Session["LeaveType"] = ddlLeaveType.SelectedValue;
            Session["Description"] = txtDescription.Text.Trim();

            HttpCookie cookie = new HttpCookie("Employee");

            cookie["EmployeeID"] = txtEmployeeID.Text.Trim();
            cookie["EmployeeName"] = txtEmployeeName.Text.Trim();
            cookie.Expires = DateTime.Now.AddDays(1);

            Response.Cookies.Add(cookie);

            lblEmployeeID.Text =
                Server.HtmlEncode(txtEmployeeID.Text.Trim());

            lblEmployeeName.Text =
                Server.HtmlEncode(txtEmployeeName.Text.Trim());

            lblLeaveDate.Text =
                Server.HtmlEncode(txtLeaveDate.Text);

            lblLeaveType.Text =
                Server.HtmlEncode(ddlLeaveType.SelectedValue);

            lblDescription.Text =
                Server.HtmlEncode(txtDescription.Text.Trim());

            pnlResult.Visible = true;
        }
    }
}
