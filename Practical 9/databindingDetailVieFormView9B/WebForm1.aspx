<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridViewandFormview9B.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tyitConnectionString %>" SelectCommand="SELECT [Id] FROM [emp]"></asp:SqlDataSource>


            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" AutoGenerateRows="False" DataKeyNames="Id">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tyitConnectionString %>" SelectCommand="SELECT * FROM [emp] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Id" Type="Int32"></asp:ControlParameter>
                    </SelectParameters>
            </asp:SqlDataSource>


            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Salary:
                    <asp:TextBox Text='<%# Bind("Salary") %>' runat="server" ID="SalaryTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /><br />
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Salary:
                    <asp:TextBox Text='<%# Bind("Salary") %>' runat="server" ID="SalaryTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    Name:
                    <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" /><br />
                    Salary:
                    <asp:Label Text='<%# Bind("Salary") %>' runat="server" ID="SalaryLabel" /><br />

                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
