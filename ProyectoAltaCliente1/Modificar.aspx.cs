using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Modificar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String n = Request.QueryString["n"];
        String a = Request.QueryString["a"];

        L1.Text = n;
        L2.Text = a;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {

        String n = Request.QueryString["n"];
        Nombre.Text = n;
        txtNombre.Visible = true;
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        String a = Request.QueryString["a"];
        Apellido.Text = a;
        txtApellido.Visible = true;
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        String c = Request.QueryString["c"];
        Correo.Text = c;
        txtCorreo.Visible = true;
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        String p = Request.QueryString["p"];
        Pass.Text = p;
        txtPass.Visible = true;
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        String d = Request.QueryString["d"];
        Direc.Text = d;
        txtDirec.Visible = true;
    }

    protected void btn6_Click(object sender, EventArgs e)
    {
        String f = Request.QueryString["f"];
        Fecha.Text = f;
        txtFecha.Visible = true;
    }

    protected void btn7_Click(object sender, EventArgs e)
    {
        String t = Request.QueryString["t"];
        Fono.Text = t;
        txtFono.Visible = true;
    }

    protected void botonCen_Click(object sender, EventArgs e)
    {
        String n = txtNombre.Text;
        String a = txtApellido.Text;
        String c = txtCorreo.Text;
        String p = txtPass.Text;
        String d = txtDirec.Text;
        String f = txtFecha.Text;
        String t = txtFono.Text;
        if (n == null || a == null || c == null || p == null || d == null || f == null || t == null)
        {
            String error = "complete campos vacios";
            Response.Redirect("Error.aspx?error=" + error);
        }
        else
        {
            int numero = 0;

            try
            {
                numero = Int32.Parse(t);
            }
            catch (FormatException ex)
            {
                String error = "ingrese solo numeros";
                Response.Redirect("Error.aspx?error=" + error);
            }

            String r = Request.QueryString["r"];
            Usuario us = new Usuario(n,a,c,p,d,f,numero);
            if (us.modificar(r) > 0)
            {
                Response.Redirect("modificar.aspx");
            }
            else
            {
                String error = "El Usuario no existe";
                Response.Redirect("Error.aspx?error=" + error);
            }
        }
    }
}