using System;
using System.Web.UI;

namespace AWP__practicals
{
    public partial class practical_8B : System.Web.UI.Page
    {
        // Custom exception class
        class ageException : Exception
        {
            public ageException(string s) : base(s) { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Convert input from TextBox to integer
                int age1 = Convert.ToInt32(TextBox1.Text);

                // Throw custom exception if age is greater than 80
                if (age1 < 19 || age1 >= 80 )
                {
                    throw new ageException("Invalid Age !!!" +"<br>");
                }
                else
                {
                    throw new ageException("this is a valid Age !!!" + "<br>");
                }
            }
            catch (ageException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                Response.Write("finnaly Exception is Executed");
            }
           
        }
    }
}
