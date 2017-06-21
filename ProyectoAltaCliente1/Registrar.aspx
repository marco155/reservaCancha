<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrar.aspx.cs" Inherits="Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="EstiloBasico.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url(IMG/fondo.jpg); background-size: 100% 100%; width: 500px; height: 700px; margin: auto; margin-top: 100px;">
    
         <fieldset>
                <legend><h1>Datos Personales</h1></legend>
             <asp:Label ID="Label1" CssClass="label" runat="server" Text="Rut"></asp:Label>
              <input type="text" name="txtRut" id="rut" class="text" placeholder="Ingrese Rut" />
             <asp:Label ID="Label2" CssClass="label" runat="server" Text="Nombre"></asp:Label>
             <input type="text" name="txtNombre" id="nom" class="text" placeholder="Ingrese Nombre" />
             <asp:Label ID="Label3" CssClass="label" runat="server" Text="Apellido"></asp:Label>
            <input type="text" name="txtApellido" id="ape" class="text" placeholder="Ingrese Apellido" />
             <asp:Label ID="Label4" CssClass="label" runat="server" Text="correo"></asp:Label>
             <input type="email" name="txtCorreo" id="correo" class="text" placeholder=" Ingrese Correo Electronico" />
             <asp:Label ID="Label5" CssClass="label" runat="server" Text="Contraseña"></asp:Label>
            <input type="password" name="txtPass" id="pas" class="text" placeholder="Ingrese contraseña"/>
              <asp:Label ID="Label9" CssClass="label" runat="server" Text="Confirme Contraseña"></asp:Label>
             <input type="password"  name="txtPass1" id="pass" class="text" placeholder="Ingrese confirmación de contraseña"/>
             <asp:Label ID="Label6" CssClass="label" runat="server" Text="dirección"></asp:Label>
            <input type="tel" name="txtDireccion" id="dire" class="text" placeholder="Ingrese domicilio" />
             <asp:Label ID="Label7" CssClass="label" runat="server"  Text="fecha de nacimiento"></asp:Label>
            <input type="date" name="fecha" id="txtFecha" class="text" />
              <asp:Label ID="Label8" CssClass="label" runat="server"  Text="telefono"></asp:Label>
             <input type="tel" name="fono" id="txtFono" class="text" placeholder="912345678"  />
             <asp:Button ID="Button1" runat="server" Text="Registrar"  CssClass="boton1" OnClick="Button1_Click" />

         </fieldset>
    </div>
    </form>
</body>
</html>
