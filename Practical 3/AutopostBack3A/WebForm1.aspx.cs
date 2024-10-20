using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace basicwebpageAutoPostBack3A
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
                Label1.ForeColor=System.Drawing.Color.Red;
            if(RadioButtonList1.SelectedIndex == 1) 
                Label1.ForeColor = System.Drawing.Color.Green;
            if(RadioButtonList1.SelectedIndex == 2)
                Label1.ForeColor = System.Drawing.Color.Blue;
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Font.Name = RadioButtonList2.SelectedValue;
        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList3.SelectedIndex == 0)
                Label1.Font.Size = FontUnit.Small;
            if (RadioButtonList3.SelectedIndex == 1)
                Label1.Font.Size = FontUnit.Medium;
            if(RadioButtonList3.SelectedIndex == 2)
                Label1.Font.Size = FontUnit.Large;
        }
    }
}