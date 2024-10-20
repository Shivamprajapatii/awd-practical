using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diffTypesOfCookie7A
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("studinfo");
            cookie["name"] = TextBox1.Text;
            cookie["age"] = TextBox2.Text;

            // Set cookie to expire in 1 day (persistent cookie)
            cookie.Expires = DateTime.Now.AddDays(1);
            //cookie.Expires = DateTime.Now.AddMilliseconds(1000);

            // Add the cookie to the Response to save it on the client's machine
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm2.aspx");
        }
    }
}