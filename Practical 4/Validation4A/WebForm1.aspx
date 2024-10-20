<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validationControl4A.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sign UP Here</h2>
            <hr />
            Enter Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br /> <br />

            Enter Age:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Valid Age" ControlToValidate="TextBox2" MinimumValue="18" MaximumValue="80" Type="Integer">
            </asp:RangeValidator>
            <br /> <br />


            Enter Email:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="TextBox3" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
             <br /> <br />

            Password:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Is Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
             <br /> <br />

            Re-Enter Pass:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="enter valid Password" ControlToCompare="TextBox5" ControlToValidate="TextBox4"></asp:CompareValidator>
            <br /> <br />

            Enter Mobile:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox6" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
             <br /> <br />

            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />

        </div>    
    </form>
</body>
</html>
