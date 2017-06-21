using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String cor = Request.QueryString["cor"];
        String pas = Request.QueryString["pas"];
        Usuario us = new Usuario(cor,pas);


        //aqui no entran los datos :/

        SqlDataReader dr;
        dr = us.logear1();
        if (dr.HasRows)
        {
            while(dr.Read())
            {
                L1.Text = dr[1].ToString();
                L2.Text = dr[2].ToString();
            }
        }

    
      
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String cor = Request.QueryString["cor"];
        String pas = Request.QueryString["pas"];
        Usuario us = new Usuario(cor, pas);

        SqlDataReader dr;
        dr = us.logear1();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                String r = dr[0].ToString();
                String n = dr[1].ToString();
                String a = dr[2].ToString();
                String d = dr[5].ToString();
                String f = dr[6].ToString();
                String t = dr[7].ToString();
                Response.Redirect("Modificar.aspx?c=" + cor + "&p=" + pas + "&n=" + n +"&a="+a+"&d=" +d+"&f="+f+"&t="+t+"&r="+r);
            }
        }

        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String cor = Request.QueryString["cor"];
        String pas = Request.QueryString["pas"];
        Usuario us = new Usuario(cor, pas);

        SqlDataReader dr;
        dr = us.logear1();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                String r = dr[0].ToString();
                String n = dr[1].ToString();
                String a = dr[2].ToString();
                String d = dr[5].ToString();
                String f = dr[6].ToString();
                String t = dr[7].ToString();
                Response.Redirect("Delete.aspx?c=" + cor + "&p=" + pas + "&n=" + n + "&a=" + a + "&d=" + d + "&f=" + f + "&t=" + t + "&r=" + r);
            }
        }
    }
}