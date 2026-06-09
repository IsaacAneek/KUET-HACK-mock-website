using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kuet_hack_mock
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void onLoginPageButtonClicked(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void onProfileIconClicked(object sender, EventArgs e)
        {
            Response.Redirect("~/profile_info.aspx");
        }

    }
}