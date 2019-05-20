<%-- 
    Document   : Register
    Created on : May 19, 2019, 4:22:22 PM
    Author     : Msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title> Signup Page </title>
	<style>
	h1
	{
		color:orange;
		font-weight:500;
		font-family:Papyrus;
		font-size:30px;
		/* background-color:yellow;*/
		position: static;
		bottom: 300;
		right: 300;
		padding-top:10px;
		text-align: center;
	}
	.button
	{
		background-color: #cccccc; 
		background-image: url("download.jpg");
		display:button;
		/*type = "button";*/
		/*color:blue;*/
		border-color:black;
		border-style:groove;
		margin-bottom:20px;
		cursor: pointer;
	}
	body 
	{
		background-image: url("mainBackground.jpg");
		background-color: #cccccc;
	}
	
	
	p1
	{
		color:white;
		font-family:Papyrus;
		font-size:24px;
		text-align: center;
		background-color: #cccccc; 
		background-image: url("download.jpg");
	}
	p2
	{
		color:orange;
		font-family:Verdana;
		font-size:18px;
		text-align: center;	
	}
	.grid-container
	{
		display: grid;
		grid-template-column: auto auto auto;
		position: absolute;
		top: 25%;
		left: 42%;
}
	</style>
	</head>
	
	<body>
                <form action="${pageContext.request.contextPath}/jsp/index.jsp" method="get">
		<button class = "button" > <p1> Back </p1> </button>
                </form>
		
		<h1>CREATE NEW ACCOUNT</h1>
		<div class = "grid-container">
                                        <form action="../CreatePerson" method="get">
					<br/>
					<input type = "text" name = "username" placeholder="Username" /><br/>
					<input type = "password" name = "password" placeholder="Password" /><br/>
                                        <input type = "text" name = "email" placeholder="email" /><br/>
					<input type = "text" name = "full_name" placeholder="full name" /><br/>
					<input type = "text" name = "Job" placeholder="Job" /><br/>
					<input type = "text" name = "age" placeholder="age" /><br/>
					<button class = "button SignButton"> <p1> Sign Up </p1> </button>
                                        </form>
				
		</div>
		
	
	</body>
</html>
