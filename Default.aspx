<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="LeaveApplication.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Academic Calendar</title>
    <link href="Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Academic Calendar</h1>

            <asp:Calendar ID="Calendar1" runat="server"
                OnSelectionChanged="Calendar1_SelectionChanged">
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
