using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace stateManagement5C
{
    public partial class ViewState : System.Web.UI.Page
    {
        int x = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBox1.Text = "0"; // Phali bar jab load hoga toh text ka value box me 0 hoga
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ViewState["a"] != null)
            {
                x = Convert.ToInt32(ViewState["a"]) + 1;
            
            }
            TextBox1.Text = x.ToString();
            ViewState["a"] = x;

        }
    }
}