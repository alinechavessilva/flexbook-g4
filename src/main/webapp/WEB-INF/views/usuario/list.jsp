<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
<jsp:attribute name="extraStyles">
<link rel="stylesheet" href="<c:url value='/assets/css/pagination/jqpagination.css'/>" />
</jsp:attribute>
<jsp:attribute name="extraScripts">
<script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
</jsp:attribute>
<jsp:body>
  <div>
       <table class="table table-condensed table-bordered table-striped table-hover">
        <thead>
	      <tr>
		    <td>name</td>
		    <td>email</td>
          </tr>
         </thead>
          <tbody>
            <c:forEach items='${paginatedList.currentList}' var='object'>         		
	          <tr>
		        <td><a href="<c:url value='#'/>/${object.id}">${object.name}</a></td>
		        <td>${object.email}</td>		         
		      </tr>
            </c:forEach>
            
            <c:forEach items='${listMsg2.currentList}' var='object'>         		
	          <tr>
		        <td><a href="<c:url value='#'/>/${object.id}">${object.id}</a></td>
		        <td>${object.mensagem}</td>		         
		      </tr>
            </c:forEach>
          </tbody>
       </table>
       
       <!-- lista mensagens -->
       <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
		                  	<td>id</td>
		                  	<td>mensagen</td>
	                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${listMsg.currentList}' var='object'>         		
	                  <tr>
		                <td>${object.id}</td>
		                <td>${object.mensagem}</td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
       
       
	<template:paginationComponent paginatedList="${paginatedList}" page="${param.page}" action=""/>
  </div>
</jsp:body>
</template:admin>
