using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kuet_hack_mock
{
    public partial class profile_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadUserProfile();
            }
        }

        private void loadUserProfile()
        {

        }

        protected void onShowPasswordClicked (object sender, EventArgs e)
        {

        }

        protected void onUpdateInfoClicked(object sender, EventArgs e)
        {

        }
    }
}