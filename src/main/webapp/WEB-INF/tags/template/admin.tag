<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@attribute name="mensagens" fragment="true" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Flexbook</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">

  <!-- style -->
   <link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
   <link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">
   <jsp:invoke fragment="extraStyles"/>
</head>

<body>
  
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">

        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/flexbook/">Flexbook</a>
      </div>

      <div class="collapse navbar-collapse" id="menu">
        <ul class="nav navbar-nav">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
            <ul class="dropdown-menu">
	            	              <li><a href="<c:url value='/usuario/form'/>"><span class="glyphicon glyphicon-plus-sign"></span> Adicionar Usuario</a></li>	              
	              <li><a href="<c:url value='/usuario'/>"><span class="glyphicon glyphicon-menu-hamburger"></span> Listar Usuarios</a></li>
				  <li role="separator" class="divider"></li>

            </ul>
          </li>
        </ul>
        
      </div>
    </div>
  </nav>

  <!-- FINAL NAV -->
  
   <div class="container">
   <div class="row " style="padding-top:40px;">
     <br><br>
 	  <%-- Retorna as mensagens --%>
       <div class="col-md-8">
        <div class="panel panel-info">
          <div class="panel-heading">
                Mensagens
           </div>
       
             <div class="panel-body">
               <ul class="media-list">
                <%--  <c:forEach var="msg" items="${lista}">
                  <li class="media"> <br>
                    <div class="media-body">
                     <div class="media">
                      <a class="pull-left" href="#">
                       <img class="media-object img-circle " src="assets/img/user.png" /></a>
                         <div class="media-body" >
                           <c:out value="${msg.mensag}"></c:out>
                           <small class="text-muted">Alex Deo | 23rd June at 5:00pm</small>
                            <hr />
                           </div>
                          </div>
                        </div>
                      </li>           
	                </c:forEach> --%>
	                
	          <c:import var="msg" url="/mensagen/listMsg"/> 
	          <div>
    <div class ="container min-container">
   
  
    </div>
  </div>
	                
	               <%--  <c:forEach var="msgRecebidas" items="${listaMsgRecebidas}"> 
	                <li class="media"><br>
                     <div class="media-body">
                      <div class="media">
                       <a class="pull-left" href="#">
                        <img class="media-object img-circle " src="imagens/usuario2G4.jpg" /></a>
                         <div class="media-body" >
                           <c:out value="${msgRecebidas.mensag}"></c:out>
                           <small class="text-muted">Alex Deo | 23rd June at 5:00pm</small>
                            <hr />
                           </div>
                          </div>
                        </div>
                      </li>
                     </c:forEach> --%>
	                
                   </ul>
                </div>  

<!-- envio de mensagens -->
<div class="panel-footer">
     <div class="input-group">
<%--          		 <jsp:useBean id="recebid" class="br.com.mensagens.RecebeIds"/> --%>
		 <%--  	
			 <form action="MensagensServlet" method="post">
			    <input name="user_recb" type="hidden" value="${msg.id_usuarioRec}"/>
	     		<input name="id_usuarioEnv" type="hidden" value="${msg.id_usuarioEnv}"/>
				<input type="text" name="campoMensagem"
				 placeholder="Digite sua mensagem..." />
				<span class="input-group-btn">
                 <input type="submit" class="btn btn-info" value="Enviar" />
                </span>
			 </form>   --%>                    
        </div>
       </div>
      </div>
     </div>
 <!-- exibe usuarios -->
<div class="col-md-4">
  <div class="panel panel-primary">
    <div class="panel-heading">
               Usuários
       </div>
         <div class="panel-body">    		
                  <jsp:doBody/>		 
		 </div> 
       </div>
     </div>                              
  </div>
</div>

<script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>

<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
<jsp:invoke fragment="extraScripts"/>

</body>
</html>