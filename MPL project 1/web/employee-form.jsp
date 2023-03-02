<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	
	<div class = "container">
            <div class="float-right">
			<a href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
		</div>
		<h1>Doctor Form</h1>
		<hr/>
		
		<div class = "row">
			<div class = "col-md-4">
				<form action = "${pageContext.request.contextPath}/EmployeeController" method="POST">
                                    <%--   <div class="form-group">
					Enter ID  <input type = "text" class = "form-control" name = "id" placeholder = " ID" value = "${employee.id}"/>
					</div>--%>
                                        <div class="form-group">
					Enter Name  <input type = "text" class = "form-control" name = "name" placeholder = " name" value = "${employee.name}"/>
					</div>
                                        <div class="form-group">
					Enter Age  <input type = "text" class = "form-control" name = "age" placeholder = " age" value = "${employee.age}"/>
					</div>
                                        <div class="form-group">
                                        Enter Qualification  <input type = "text" class = "form-control" name = "qualification" placeholder = " Qulification" value = "${employee.qualification}"/>
					</div>
					<div class = "form-group">
					Enter Address <input type = "text" class = "form-control" name = "address" placeholder = " address" value = "${employee.address}"/>
					</div>
				
					<div class = "form-group">
                                        Enter Email  <input type ="email" class = "form-control" name = "email" placeholder=" Email" value = "${employee.email}" />
					</div>
				
					<div class="form-group">
					Enter Phone  <input type = "text" class = "form-control" name = "phone" placeholder = "Phone no" value = "${employee.phone}"/>
					</div>
                                                
                                        
					<input type = "hidden" name = "id" value = "${employee.id}"/>
				
					<button type = "submit" class = "btn btn-primary">Save</button>
				</form>
			</div>
		</div>
		<a href = "${pageContext.request.contextPath}/EmployeeController?action=LIST">Back to List</a>
	</div>
	

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
