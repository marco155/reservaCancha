using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String n = Request.QueryString["n"];
        String a = Request.QueryString["a"];

        L1.Text = n;
        L2.Text = a;
    }

    protected void botonCen_Click(object sender, EventArgs e)
    {
        String r = Request.QueryString["r"];
        Usuario us = new Usuario(r);

        if (us.delete() > 0)
        {
            String exito = "Suscripción eliminada";
            Response.Redirect("Exito.aspx?exito=" + exito);
        }
        else
        {
            String error = "Usuario no existe";
            Response.Redirect("Error.aspx?error=" + error);
        }
    }
}