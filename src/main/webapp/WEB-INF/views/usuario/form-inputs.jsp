<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	        <div class="form-group">
          <label for="name">name</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='name' type='text'/>
<form:errors path='name'/>

          </div>
        </div>
        <div class="form-group">
          <label for="email">email</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='email' type='text'/>
<form:errors path='email'/>

          </div>
        </div>
        <div class="form-group">
          <label for="senha">senha</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='senha' type='password'/>
<form:errors path='senha'/>

          </div>
        </div>
   <%--      <div class="form-group">
          <label for="category.id">category.id</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:select path='category.id' items='${categoryList}' itemValue='id' itemLabel='name'>
</form:select>
<form:errors path='category.id'/>

          </div>
        </div> --%>
