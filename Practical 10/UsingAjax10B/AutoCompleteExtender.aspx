<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteExtender.aspx.cs" Inherits="ajaxControl10B.AutoCompleteExtender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender"
                MinimumPrefixLength="1" runat="server" BehaviorID="TextBox1_AutoCompleteExtender"
                DelimiterCharacters="" ServiceMethod="getinfo" TargetControlID="TextBox1">
            </ajaxToolkit:AutoCompleteExtender>
        </div>
    </form>
</body>
</html>
