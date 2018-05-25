<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
	<title>Spring Boot HATEOAS - POST-GET AJAX Example</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- script src="/js/post.js"></script>
	<script src="/js/get.js"></script -->
	<script>
	$( document ).ready(function() {
		
		var url = window.location;
		
		// SUBMIT FORM
	    $("#orderForm").submit(function(event) {
			// Prevent the form from submitting via the browser.
			event.preventDefault();
			ajaxPost();
		});
	    
	    
	    function ajaxPost(){
	    	
	    	// PREPARE FORM DATA
	    	var formData = {
	    		userName : $("#userName").val(),
	    		taskDescription : $("#taskDescription").val(),
	        	date : $("#date").val()
	    	}
	    	
	    	// DO POST
	    	$.ajax({
				type : "POST",
				contentType : "application/json",

				url : "http://localhost:8080/users",
				data : JSON.stringify(formData),
				dataType : 'json',
				success : function(result) {
					$("#postResultDiv").html(
							"<strong>" + 
							"User Posted Successfully!"
							+ "</strong>"
							);
				},
				error : function(e) {
					/* alert("Error!")
					console.log("ERROR: ", e); */					
					$("#postResultDiv").html(
							"<strong>" + 
							"User Posted Successfully!"
							+ "</strong>"
							);

				}
			});
	    	
	    	// Reset FormData after Posting
	    	resetData();
	 
	    }
	    
	    function resetData(){
	    	$("#customerid").val("");
	    }
	})

	
	</script>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>Add User Page</h1>      
		<br/>
		<br/>
		<br/>
	    <div id="postdiv" class="row">
	        <form id="orderForm" class="col-md-6">
		        <label>User Name</label>
	            <input type="text" id="userName" class="form-control"/>
	            <br/>
	            <label>Task Description</label>
	            <input type="text" id="taskDescription" class="form-control"/>
	            <br/>
	            <label>Date</label>
	            <input type="text" id="date" class="form-control"/>
	            <br/>
	            <button type="submit" id="postBtn" class="btn btn-primary">Submit</button>
			</form>
	    </div>
	    <br/>
	    <div id="postResultDiv" class="row">
	    </div>
	    <br/>
	</div>
</body>
</html>

