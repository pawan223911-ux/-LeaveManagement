<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveForm.aspx.cs"
    Inherits="LeaveApplication.LeaveForm" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Leave Application</title>
    <link href="Site.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
        <h1>Leave Application Form</h1>

        <div class="form-group">
            <label>Employee ID</label>
            <asp:TextBox ID="txtEmployeeID" runat="server"
                CssClass="textbox" />
            <asp:RequiredFieldValidator ID="rfvEmployeeID"
                runat="server" ControlToValidate="txtEmployeeID"
                ErrorMessage="Employee ID is required"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Employee Name</label>
            <asp:TextBox ID="txtEmployeeName" runat="server"
                CssClass="textbox" />
            <asp:RequiredFieldValidator ID="rfvEmployeeName"
                runat="server" ControlToValidate="txtEmployeeName"
                ErrorMessage="Employee name is required"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Leave Date</label>
            <asp:TextBox ID="txtLeaveDate" runat="server"
                CssClass="textbox" ReadOnly="true" />
            <asp:RequiredFieldValidator ID="rfvLeaveDate"
                runat="server" ControlToValidate="txtLeaveDate"
                ErrorMessage="Select a leave date"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Leave Type</label>
            <asp:DropDownList ID="ddlLeaveType" runat="server"
                CssClass="textbox">
                <asp:ListItem Text="Select Leave Type" Value="" />
                <asp:ListItem Text="Personal Leave" Value="Personal Leave" />
                <asp:ListItem Text="Sick Leave" Value="Sick Leave" />
                <asp:ListItem Text="Casual Leave" Value="Casual Leave" />
                <asp:ListItem Text="Emergency Leave" Value="Emergency Leave" />
                <asp:ListItem Text="Other" Value="Other" />
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="rfvLeaveType"
                runat="server" ControlToValidate="ddlLeaveType"
                InitialValue=""
                ErrorMessage="Select a leave type"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Description</label>
            <asp:TextBox ID="txtDescription" runat="server"
                CssClass="description" TextMode="MultiLine"
                Rows="5" />
            <asp:RequiredFieldValidator ID="rfvDescription"
                runat="server" ControlToValidate="txtDescription"
                ErrorMessage="Enter the description"
                ForeColor="Red" />
        </div>

        <asp:Button ID="btnSubmit" runat="server"
            Text="Submit Leave Application"
            CssClass="button" OnClick="btnSubmit_Click" />

        <br /><br />

        <asp:ValidationSummary ID="ValidationSummary1"
            runat="server" ForeColor="Red" />

        <asp:Panel ID="pnlResult" runat="server"
            Visible="false" CssClass="result">
            <h2>Leave Application Submitted</h2>

            <p>Employee ID:
                <asp:Label ID="lblEmployeeID" runat="server" />
            </p>

            <p>Employee Name:
                <asp:Label ID="lblEmployeeName" runat="server" />
            </p>

            <p>Leave Date:
                <asp:Label ID="lblLeaveDate" runat="server" />
            </p>

            <p>Leave Type:
                <asp:Label ID="lblLeaveType" runat="server" />
            </p>

            <p>Description:
                <asp:Label ID="lblDescription" runat="server" />
            </p>

            <h3>Application Submitted Successfully!</h3>
        </asp:Panel>
    </div>
</form>
</body>
</html>
