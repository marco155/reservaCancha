using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Registrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String rut = Request.Form["txtRut"];
        String nom = Request.Form["txtNombre"];
        String ap = Request.Form["txtApellido"];
        String correo = Request.Form["txtCorreo"];
        String pass = Request.Form["txtPass"];
        String pass1 = Request.Form["txtPass1"];
        String dire = Request.Form["txtDireccion"];
        String fecha = Request.Form["fecha"];
        String num = Request.Form["fono"];
        String error = "";
        if (pass.Equals(pass1))
        {
            if (num == null || num.Equals("")||rut == null || rut.Equals("") || nom == null || nom.Equals("") || ap == null || ap.Equals("") || correo == null || correo.Equals("") || pass == null || pass.Equals("") || dire == null || dire.Equals("") || fecha == null || fecha.Equals(""))
            {
                error = "complete campos vacios";
                Response.Redirect("Error.aspx?error=" + error);
            }  else
            {

                int n1 = 0;

                try
                {
                    n1 = Int32.Parse(num);
                }
                catch (FormatException ex)
                {
                    error = "Ingrese solo numeros en campo telefono";
                    Response.Redirect("Error.aspx?error=" + error);
                }

                if (n1 > 900000000)
                {
                    Usuario us = new Usuario(rut, nom, ap, correo, pass, dire, fecha,n1);
                    if (us.insert() > 0)
                    {
                        String exito = "se registro exitosamente";
                        Response.Redirect("Exito.aspx?exito=" + exito);
                    }
                    else
                    {
                        error = "el correo electronico ya existe";
                        Response.Redirect("Error.aspx?error=" + error);
                    }// fin else de ingreso usuario
                }
                else
                {
                    error = "ingrese un número que exista(ante ponga el 9 antes de su número)";
                    Response.Redirect("Error.aspx?error=" + error);
                }//fin else de numero invalido
               
            }//fin else de campos vacios(if)
        }
        else
        {
            error = "Las contraseñas no son iguales";
            Response.Redirect("Error.aspx?error="+error);
        }// fin else de confirmacion de contraseñas
    }// fin accion boton
}