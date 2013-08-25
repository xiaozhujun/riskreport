<%@ page import="riskreport.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userpwd', 'error')} ">
	<label for="userpwd">
		<g:message code="user.userpwd.label" default="Userpwd" />
		
	</label>
	<g:textField name="userpwd" value="${userInstance?.userpwd}"/>
</div>

