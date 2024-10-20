using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diffTypesOfCookie7A
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["studinfo"];
            if (cookie != null)
            {
                Label1.Text = cookie["name"];
                Label2.Text = cookie["age"];
            }
        }
    }
}