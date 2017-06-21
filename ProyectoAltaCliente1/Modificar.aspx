<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modificar.aspx.cs" Inherits="Modificar" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="estiloModificar.css">
    <title>Modificar</title>
</head>
<body>
    <form id="form1" runat="server">
        	<header id="encabezado">
    		 <div id="menuS">
    		 		<nav class="margin">
           		 			 <ul>
           		 			 	<li id="w1"><a href="Login.aspx">Inicio</a></li>
           		 			 	<li id="w2"><a href="#">Descuentos</a></li>
           		 			 	<li id="w3"><a href="Modificar.aspx">Actualizar datos</a></li>
           		 			 	<li id="w4"><a href="#">Escuela de Futbol</a></li>
           		 			 	<li id="w5"><a href="#">Reserva tu cancha</a></li>
           		 			 	<li id="w6"><a href="#">Cancelar Reserva</a></li>
           		 			 </ul>
           		 		</nav>
    		 </div>
    		 <div id="usuario">
	    		 
	    		 <div id="datos">
	    		 	  <h2 class="letra">Bienvenid@</h2>
	    		 	 <asp:Label ID="L1" runat="server" CssClass="letra" Text=""></asp:Label> <br />
                      <asp:Label ID="L2" runat="server" CssClass="letra" Text=""></asp:Label>
	    		    <label class="letra">  <a  href="Home.html">cerrar Sesión</a> </label> 
	    		 </div>
	    		 <div id="logo"></div>
    		 </div>
    	</header><!--cabeza-->


    	<section>
    		  <div class="nada"></div>
    		  <div id="marco"> 
    		  		<div id="cab"><label id="mod">MODIFICAR</label></div>
    		  		<div class="lado">
                          <asp:Button ID="btn1" CssClass="boton" runat="server" Text="Nombre" OnClick="btn1_Click"  /> <!--remplazar los botones de html por BOTONES de c# -->
    		  			   <asp:Button ID="btn2" CssClass="boton" runat="server" Text="Apellido" OnClick="btn2_Click"/>
                           <asp:Button ID="btn3" CssClass="boton" runat="server" Text="Correo" OnClick="btn3_Click" />
                         <asp:Button ID="btn4" CssClass="boton" runat="server" Text="Contraseña" OnClick="btn4_Click" />
                         <asp:Button ID="btn5" CssClass="boton" runat="server" Text="Dirección" OnClick="btn5_Click" />
                        <asp:Button ID="btn6" CssClass="boton" runat="server" Text="Fecha De Nacimiento" OnClick="btn6_Click" />
                         <asp:Button ID="btn7" CssClass="boton" runat="server" Text="Teléfono" OnClick="btn7_Click" />
                        
    		  		</div>
    		  	<div class="lado">
    		  		<div class="LT">
                          <asp:Label ID="Nombre" CssClass="label" runat="server" Text=""></asp:Label> <!--remplazar los label de html por LABEL de c# -->
    		  			<asp:Label ID="Apellido" CssClass="label" runat="server" Text=""></asp:Label>
    		  			<asp:Label ID="Correo" CssClass="label" runat="server" Text=""></asp:Label>
    		  			<asp:Label ID="Pass" CssClass="label" runat="server" Text=""></asp:Label>
    		  			<asp:Label ID="Direc" CssClass="label" runat="server" Text=""></asp:Label>
    		  			 <asp:Label ID="Fecha" CssClass="label" runat="server" Text=""></asp:Label>
    		  			 <asp:Label ID="Fono" CssClass="label" runat="server" Text=""></asp:Label>
    		  			 
    		  		</div>
    		  		<div class="LT"> 
                          
                          <asp:TextBox id="txtNombre" CssClass="text" runat="server" placeholder="Nombre" Visible="False"></asp:TextBox> <!--remplazar los input de html por TextBox de c# -->

	    		  			 <asp:TextBox ID="txtApellido" CssClass="text" Visible="False" placeholder="Apellido" runat="server"></asp:TextBox>
	    		  			 
	    		  			 <asp:TextBox ID="txtCorreo" CssClass="text" Visible="False" placeholder="Correo" runat="server"></asp:TextBox>
	    		  			 
	    		  			<asp:TextBox ID="txtPass" CssClass="text" Visible="False" placeholder="Contraseña" runat="server"></asp:TextBox>
	    		  			
	    		  			<asp:TextBox ID="txtDirec" CssClass="text" Visible="False" placeholder="Dirección" runat="server"></asp:TextBox>
                          	    		  			 
	    		  			<asp:TextBox ID="txtFecha" CssClass="text" Visible="False" placeholder="Fecha De nacimiento" runat="server"></asp:TextBox>
	    		  			 
	    		  			<asp:TextBox ID="txtFono" CssClass="text" Visible="False" placeholder="teléfono" runat="server"></asp:TextBox>
    		  		</div>
    		  	</div>
    		  </div>
    		  <div class="nada"></div>
    	</section>

    	<footer>
    		  <div id="pie">
    		  		<div id="cen">
                          <asp:Button id="botonCen" runat="server" Text="Actualizar" OnClick="botonCen_Click" />
    		  		</div>
    		  </div>
    	</footer>
    
    </form>
</body>
</html>

