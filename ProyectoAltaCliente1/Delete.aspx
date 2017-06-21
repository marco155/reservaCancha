<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="estiloModificar.css">
    <title>Delete</title>
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
           		 			 	<li id="w6"> <asp:Button ID="Button1" runat="server" CssClass="entradas" Text="Borrar Cuenta"  /></li>
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
    		  	<h1 id="agrandar">Esta seguro que desea cancelar la suscripción al recinto deportivo Don JANITO</h1>
    		  </div>
    		  <div class="nada"></div>
    	</section>

    	<footer>
    		  <div id="pie">
    		  		<div id="cen">
                          <asp:Button ID="botonCen" runat="server" Text="Aceptar" OnClick="botonCen_Click" /> 
    		  		</div>
    		  </div>
    	</footer>
    
    </form>
</body>
</html>

