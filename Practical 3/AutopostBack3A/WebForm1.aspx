<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="basicwebpageAutoPostBack3A.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

             <asp:Label ID="Label1" runat="server" Text="Hello World"></asp:Label>
             <br /> <br /> <hr />
             <h5>Click here to Use DropDown List</h5>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Nerul</asp:ListItem>
                <asp:ListItem>Chembur</asp:ListItem>
                <asp:ListItem>Vashi</asp:ListItem>
            </asp:DropDownList>
            <hr />
            <h5>Click here to change font Color</h5>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
            </asp:RadioButtonList>
             <hr />
            <h5>Click here to change font Name</h5>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Time New Roman</asp:ListItem>
                <asp:ListItem>Arial</asp:ListItem>
                <asp:ListItem>Jokerman</asp:ListItem>
            </asp:RadioButtonList>
             <hr />
             <h5>Click here to change Size of Lable text</h5>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Midum</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:RadioButtonList>

            <hr />
           
        </div>
    </form>
</body>
</html>
