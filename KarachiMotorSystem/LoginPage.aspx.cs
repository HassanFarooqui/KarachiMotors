using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KarachiMotorSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (FlagsVariables.accountCreate)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
                FlagsVariables.accountCreate = false;
            }
        }
        protected void SignUp(object sender, EventArgs e)
        {
            Response.Redirect("SignUpFoam.aspx");
        }
    }
}