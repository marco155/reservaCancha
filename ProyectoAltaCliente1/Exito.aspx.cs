using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exito : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String exito = Request.QueryString["exito"];
        L1.Text = exito;
    }
}