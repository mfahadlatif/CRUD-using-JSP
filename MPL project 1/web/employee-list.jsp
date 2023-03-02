<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Directory</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("index.jsp");
        }
    %>
	<div class = "container">
		<div class="float-right">
			<a href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
		</div>
            <h1>Doctor Directory</h1>
		<hr/>
		
		<h5><p>${NOTIFICATION}</p></h5>
		
		<p>
			<button class = "btn btn-primary" onclick="window.location.href = 'employee-form.jsp'">Add Doctor</button>
		</p>
	
		<table class = "table table-striped table-bordered">
			
			<tr class = "thead-dark">
                                <th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Designation</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Email</th>
				<th>Actions</th>
			</tr>
			
			<c:forEach items="${list}" var="employee">
			
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.age}</td>
                                        <td>${employee.qualification}</td>
                                        <td>${employee.address}</td>
                                        <td>${employee.phone}</td>
                                        <td>${employee.email}</td>                                 
					<td> 
						<a href = "${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}">Edit</a> 
						| 
						<a href = "${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}">Delete</a> 
					</td>
				</tr>
				
			</c:forEach>
			
		</table>
		
	</div>

<<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>