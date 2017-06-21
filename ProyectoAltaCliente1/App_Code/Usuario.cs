using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Usuario
/// </summary>
public class Usuario
{
    private SqlConnection con;
    private SqlCommand com;
    private SqlDataReader dr;


    private String rut;
    private String nombre;
    private String apellido;
    private String correo;
    private String pass;
    private String direccion;
    private String fecha;
    private int fono;

    public string Rut
    {
        get
        {
            return rut;
        }

        set
        {
            rut = value;
        }
    }

    public string Nombre
    {
        get
        {
            return nombre;
        }

        set
        {
            nombre = value;
        }
    }

    public string Apellido
    {
        get
        {
            return apellido;
        }

        set
        {
            apellido = value;
        }
    }

    public string Correo
    {
        get
        {
            return correo;
        }

        set
        {
            correo = value;
        }
    }

    public string Pass
    {
        get
        {
            return pass;
        }

        set
        {
            pass = value;
        }
    }

    public string Direccion
    {
        get
        {
            return direccion;
        }

        set
        {
            direccion = value;
        }
    }

    public string Fecha
    {
        get
        {
            return fecha;
        }

        set
        {
            fecha = value;
        }
    }

    public int Fono
    {
        get
        {
            return fono;
        }

        set
        {
            fono = value;
        }
    }

    public Usuario(String correo, String pass)
    {
        this.correo = correo;
        this.pass = pass;
    }//constructor de login

    public Usuario(String rut, String nombre, String apellido, String correo, String pass, String direccion, String fecha, int fono)
    {
        this.rut = rut;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.pass = pass;
        this.direccion = direccion;
        this.fecha = fecha;
        this.fono = fono;
    }// constructor completo

    public Usuario( String nombre, String apellido, String correo, String pass, String direccion, String fecha, int fono)
    {
      
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.pass = pass;
        this.direccion = direccion;
        this.fecha = fecha;
        this.fono = fono;
    }// constructor modificar

    public Usuario( String rut)
    {
        this.rut = rut;
    }

    public int insert()
    {
        con = new SqlConnection("Data Source=SPO_LAB0906;Initial Catalog=reservaDeCanchas;Integrated Security=True");
        con.Open();
        try
        {

            String comando = "insert into usuario values ('" + this.rut + "','" + this.nombre + "','" + this.apellido + "','" + this.correo + "','" + this.pass + "','" + this.direccion + "','" + this.fecha + "',"+this.fono+")";
            com = new SqlCommand(comando,con);
            return com.ExecuteNonQuery();
        }
        catch (SqlException e)
        {
            return -1;
        }
        finally
        {
            con.Close();
        }
    }// fin insertar




    public int modificar( String rut)
    {
        con = new SqlConnection("Data Source=SPO_LAB0906;Initial Catalog=reservaDeCanchas;Integrated Security=True");
        con.Open();
        try
        {
            String comando = "update usuario set nombre = '"+this.nombre+ "', apellido = '" + this.apellido + "', correo = '" + this.correo + "', pass = '" + this.pass + "', direccion = '" + this.direccion + "', fechaDeNacimiento = '" + this.fecha + "' , fono = " + this.fono + " where rut = '"+rut+"' ";
            com = new SqlCommand(comando, con);
            return com.ExecuteNonQuery();
        }
        catch (SqlException e)
        {
            return -1;
        }
        finally
        {
            con.Close();
        }
    }//fin modificar

    public int delete()
    {
        con = new SqlConnection("Data Source=SPO_LAB0906;Initial Catalog=reservaDeCanchas;Integrated Security=True");
        con.Open();
        try
        {
            String comando = "delete  from usuario where rut like '"+this.rut+"'";
            com = new SqlCommand(comando, con);
            return com.ExecuteNonQuery();
        }
        catch (SqlException e)
        {
            return -1;
        }
        finally
        {
            con.Close();
        }

    }


    public Boolean logear()
    {
        con = new SqlConnection("Data Source=SPO_LAB0906;Initial Catalog=reservaDeCanchas;Integrated Security=True");
        con.Open();
        try
        {
            String cons = "select * from usuario where correo = '" + this.correo + "' and pass = '" +this.pass + "'";
            SqlCommand com = new SqlCommand(cons, con);
              dr = com.ExecuteReader();
            if (dr.Read())
            {
                return true;
            }else
            {
                return false;
            }
        }
        catch (SqlException e)
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }// metodo logear solo validar


    public SqlDataReader logear1()
    {
        con = new SqlConnection("Data Source=SPO_LAB0906;Initial Catalog=reservaDeCanchas;Integrated Security=True");
        con.Open();
        try
        {
            String cons = "select * from usuario where correo = '" + this.correo + "' and pass = '" + this.pass + "'";
            SqlCommand com = new SqlCommand(cons, con);
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                return dr;
            }         
        }
        catch (SqlException e)
        {
            return dr;
        }
        
        return dr;

    }// metodo logear para mostrar

}