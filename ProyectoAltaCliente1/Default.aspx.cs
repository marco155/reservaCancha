using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        String correo = Request.Form["txtCorreo"];
        String error = "";
        String pass = Request.Form["txtPass"];
        if (correo == null || correo.Equals("") || pass == null || pass.Equals(""))
        {
            error = "complete el campo o los campos vacios";
            Response.Redirect("Error.aspx?error=" + error);
        }
        else
        {

            Usuario us = new Usuario(correo, pass);       
            if (us.logear() == true)
            {
                Response.Redirect("Login.aspx?cor="+correo+"&pas="+pass);// aqui va a la pagina de usuario
            }
            else
            {
                error = "ingrese un correo electronico valido o una contraseña valida";
                Response.Redirect("Error.aspx?error=" + error);
            }
        }//fin else
    }

   
}