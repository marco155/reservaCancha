<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="estiloLogin.css">
    <title>LOGIN</title>
</head>
<body>
    <form id="form1" runat="server">
    	
    	<header id="encabezado">
    		 <div id="menuS">
    		 		<nav class="margin">
           		 			 <ul>
           		 			 <li id="w1"><a href="#">Eventos</a></li>
           		 			 	<li id="w2"><a href="#">Descuentos</a></li>
           		 			 	<li id="w3"> <asp:Button ID="Button1" runat="server" CssClass="entradas" Text="Actualizar Datos" OnClick="Button1_Click" /></li>
           		 			 	<li id="w4"><a href="#">Escuela de Futbol</a></li>
           		 			 	<li id="w5"><a href="#">Reserva tu cancha</a></li>
           		 			 	<li id="w6"> <asp:Button ID="Button2" runat="server" CssClass="entradas" Text="Cancelar Cuenta" OnClick="Button2_Click"  /></li>
           		 			 </ul>
           		 		</nav>
    		 </div>
    		 <div id="usuario">
	    		 
	    		 <div id="datos">
	    		 	  <h2 class="letra">Bienvenid@</h2> 
                     <asp:Label ID="L1" runat="server" CssClass="letra" Text=""></asp:Label> <br />
	    		 	 <asp:Label ID="L2" runat="server" CssClass="letra" Text=""></asp:Label>
                     <label class="letra">  <a  href="Home.aspx">cerrar Sesión</a> </label> 
	    		 </div>
	    		 <div id="logo"></div>
    		 </div>
    	</header><!--cabeza-->

		    	<section>
		    		    <div class="nada"></div>
		    		    <div id="pag">
		    		    	
		    		    			<div id="blok1">
 												<div id="calen"></div>
 												<div id="texto">
 													   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
 													   tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 													   quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
 													   consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
 													   cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
 													   proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
 												</div>
		    		    			</div>
		    		    </div>
		    		    <div class="nada"></div>
                    
                
            
		    	</section><!--cuerpo-->


    	<footer>
           
    	</footer><!--pie-->
    </form>
</body>
</html>