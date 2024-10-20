<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ExecuteNonQuery8A.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enetrt ID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            Enter Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
            Enter Salary<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
