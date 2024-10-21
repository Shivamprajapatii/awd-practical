<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accordian.aspx.cs" Inherits="ajaxControl10B.Accordian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <ajaxToolkit:Accordion ID="Accordion2" runat="server">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPanel" runat="server">
                        <Header>
                            SEMV
                        </Header>
                        <Content>
                            AWD
                            AI
                            SPD
                            IoT
                            ET
                        </Content>
                    </ajaxToolkit:AccordionPane>

                    <ajaxToolkit:AccordionPane ID="AccordionPanel2" runat="server">
                         <Header>
                             Teacher
                         </Header>
                        <Content>
                            Nutan
                            Samira
                            Meghna
                            Anu
                            Minal
                        </Content>
                    </ajaxToolkit:AccordionPane>

                </Panes>
            </ajaxToolkit:Accordion>
        </div>
    </form>
</body>
</html>
