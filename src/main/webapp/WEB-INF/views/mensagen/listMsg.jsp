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
    <div class ="container min-container">
      <h2 class="basic-title">Listes mensagens</h2>
        <div class="well">
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
		                <td>${object.mensagen}</td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>

          <a href="<c:url value='/mensagen/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span> Add New</a>
      </div>
    </div>
  </div>

</jsp:body>
</template:admin> 
