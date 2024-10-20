<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="userControl4C.WebUserControl1" %>

<h1>Sign In Form </h1>
<hr />
Enter Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
Enter Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" />
