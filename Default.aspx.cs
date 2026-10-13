using System;

namespace LeaveApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void Calendar1_SelectionChanged(
            object sender, EventArgs e)
        {
            Session["LeaveDate"] =
                Calendar1.SelectedDate.ToString("dd-MM-yyyy");

            Response.Redirect("LeaveForm.aspx");
        }
    }
}
