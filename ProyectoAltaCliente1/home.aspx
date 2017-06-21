<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="EstiloBasico.css" type="text/css" />
    <title></title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body class="hidden-xs-down">
    <form id="form1" runat="server">
        

           
           <header id="barra" > <!-- aqui comienza el cabezado-->
           		 <div id="b">
           		 	<div id="barra1">
           		 		<nav class="hidden-xs-down">
           		 			 <ul>
           		 				<li  id="w1"><a href="#"><b>DON JANITO</b></a></li>
           		 			 	<li id="w2"><a href="#">Reserva de canchas</a></li>
           		 			 	<li id="w3"><a href="#">Trabaja con nosotros</a></li>
           		 			 	<li id="w4"><a href="#">Escuela de Futbol</a></li>
           		 			 </ul>
           		 		</nav>
           		 	</div>
           		 </div>
           		 <div id="inicio">
           		 				<label for="login" class="label1">Inicio Sesión</label> <br />	
           		 	    	<input type="email" class="text1" placeholder="Correo electronico" name="txtCorreo" /> <br />
           		 	    	<input type="password" class="text1" name="txtPass" placeholder="contraseña" /> <br />	
                        <asp:Button ID="btn1" runat="server" CssClass="boton1" Text="Iniciar" PostBackUrl="~/Default.aspx"  />
                        <asp:Button ID="btn2" runat="server" CssClass="boton1" Text="Registrar" PostBackUrl="~/Registrar.aspx" />
           		 </div>
           </header><!-- aqui termina el cabezado-->
        
          
       

<section> <!-- aqui comienza el cuerpo-->
            <div id="nada1">

            </div>
           <div id="pag" >
                    <div id="img1">
                          <div id="slogan" class="hidden-xs-down">
                               <div id="dentro" class="hidden-xs-down">
                               	   <h2>Este es tu complejo, ven con tus amigos y diviertete!</h2>
                               	   <a  href="#" target="_back" class="btn entradas" name="#" id="entradas" > Reserva de Canchas <a/>
                               </div>
                          </div>
                    </div>
                    <div id="img2">
                    		<div id="iz">
                    			<div id="iz1">
                    			   <h2> <b>trabaja con nosotros</b> </h2><br/>
                    			    <br />
                    			   <a href="#" target="_back" class="btn entradas" id="entradas"> Contactanos</a>
                    			</div>
                    		</div>
                    </div>
                    <div id="img3">
                    	<div id="der" class="hidden-xs-down">
                    		 <div id="der1" class="hidden-xs-down">
                    		 	   <h1>Escuela oficial de futbol de la Universidad de Chile</h1><br />
                    		 	   <h3> somos los mejores en la formación educativa de futbol, vén conocenos</h3>
                    		 	    <a href="#" target="_back" class="btn entradas" id="entradas"> Matriculate</a>
                    		 </div>
                    	</div>
                    </div>
                    <div id="img4"></div>
           
               
           </div><!--aqui termina la pagina central -->
            <div id="nada1">

            </div>
     </section>  <!-- aqui termina el cuerpo-->  
       <footer id="footer"> <!-- aqui comienza el pie-->

       <div id="pie">
       	   <div id="i">
       	   	
       	   </div>
       	   	<div id="d">
       	   		 <table >
       	   		 	<tr>
       	   		 		<td><h3><b>dirección</b></h3></td>
       	   				<td><h3><b>LINK</b></h3></td>
       	   		 	</tr>
       	   		 	<tr>
       	   		 		<td><h3>Av. grecia 2205</h3></td>
       	   		 		<td><h3><a href="#" target="_back">Reserva Canchas</a></h3></td>
       	   		 		
       	   		 	</tr>
       	   		 	<tr>
       	   		 		<td><h3>Las Condes, Santiago</h3></td>
       	   		 		<td><h3><a href="#" target="_back">Contactanos</a></h3></td>
       	   		 	</tr>

       	   		 	<tr>
       	   		 		<td></td>
       	   		 		<td>
       	   		 			<h3><a href="#" target="_back">Matriculate</a></h3>
       	   		 		</td>
       	   		 	</tr>
       	   		 </table>
       	   	</div>
       </div>

       </footer> <!-- aqui termina el pie-->

    </form>
</body>
</html>