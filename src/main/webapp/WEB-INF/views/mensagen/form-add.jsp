<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>

<template:admin>
  <div>
    <div class ="container min-container">      
    <h2 class="basic-title">Add</h2>
      <form   method="POST" action="/mensagen/salvaMensagen">
       <table>
          <tr>
          <td><label path="id_UserRec"></label></td>
           <td><input path="id_UserRec"/></td>
          <tr>
          <tr>
           <td><label path="id_UserEnv"></label></td>
           <td><input path="id_UserEnv"/></td>
          <tr>
           <td><label path="mensagen"></label></td>
           <td><textarea path="mensagen"/></td>
         </tr>
            
        </table>
        <button type="submit" class="btn btn-primary">Enviar</button>

      </form>	
    </div>
  </div>
</template:admin>
