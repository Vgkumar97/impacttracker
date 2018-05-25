<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
	<title>Spring Boot Get User</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- script src="/js/post.js"></script>
	<script src="/js/get.js"></script -->
	<script>
	$( document ).ready(function() {
		
		var url = window.location;
		
		// GET REQUEST
		$("#getBtn").click(function(event){
			event.preventDefault();
			ajaxGet();
		});
		
		// DO GET
		function ajaxGet(){
			
	    	var customerId = $("#customerid_get").val();
			
			$.ajax({
				type : "GET",
				url : "http://localhost:8080/users/" + customerId,
				success: function(result){

					$("#userName").val(result.userName);
					$("#taskDescription").val(result.taskDescription);
					$("#date").val(result.date);
				},
				error : function(e) {
					$("#getResultDiv").html("<strong>Error</strong>");
					console.log("ERROR: ", e);
				}
			});	
		}
	})
	
	</script>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>Get User Page</h1>      
		<br/>
		<br/>
		<br/>
		<div id="getdiv" class="row">
	        <label>User Id</label>
	        <input type="text" id="customerid_get" class="form-control" style="width:100px;"/>
	        <br/>
	        <button id="getBtn">Get User</button>
	    </div>
	    <br/>
	    <div id="getResultDiv" class="row">
	    </div -->
	    <div id="postdiv" class="row">
	        <form id="orderForm" class="col-md-6">
		        <label>User Name</label>
	            <input type="text" id="userName" class="form-control" readonly/>
	            <br/>
	            <label>Task Description</label>
	            <input type="text" id="taskDescription" class="form-control" readonly/>
	            <br/>
	            <label>Date</label>
	            <input type="text" id="date" class="form-control" readonly/>
	            <br/>
			</form>
	    </div>
	    <br/>
	    <div id="postResultDiv" class="row">
	    </div>
	    <br/>
	</div>
</body>
</html>