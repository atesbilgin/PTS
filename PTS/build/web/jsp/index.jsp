<%-- 
    Document   : Login
    Created on : May 19, 2019, 3:54:49 PM
    Author     : Msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Login Page </title>
	<style>
	h1
	{
		color:orange;
		font-weight:500;
		font-family:Verdana;
		font-size:40px;
		/* background-color:yellow;*/
		position: absolute;
		top: 5%;
		left: 18%;
		text-align: center;
	}
	
	body 
			{
				background-image: url("mainBackground.jpg");
				background-color: #cccccc;
			}
.button{

		background-color: #A65959; 
		display:button;
		border-color:black;
		border-style:groove;
		margin-bottom:20px;
		cursor: pointer;
		background-color: #cccccc; 
		background-image: url("download.jpg");
}
.topDiv{

	position: absolute;
	top:2%;
	left: 35%;
	float: left;

}
	
	
	
	p1
		{
			color:white;
			font-family:Verdana;
			font-size:18px;
                        text-align: center;	
				
		}
	p2
	{
		color:orange;
		font-family:Verdana;
		
	}
	p3
	{
		color:orange;
		font-family:Verdana;
		font-size:24px;
		text-align: center;		
	}
	p4{
		

	}
	.grid-container
	{
		display: grid;
		grid-template-column: auto auto auto;
		position: absolute;
		top: 20%;
		right: 40%;
}
	</style>
	</head>
	
	<body>

		<p2 style = "float:left; position: absolute;"> PTS 1.0 </p2> 
		<div class="div topDiv">

			
                    <form action="login" method="post">
        
			<div style="float: left;">
					<p2> Username: </p2> 
					<input type = "text" name = "Username" style="margin-right: 20px;" />
			</div>	
			<div style="float: left;">
					<p2>  Password: </p2> 
					<input type = "password" name = "Password" style="margin-right: 20px;"/>
			</div>
					<button class = "button" type="submit" value="insert" > <p1> Log In </p1> </button>
                                        </form>
		</div>

		<div style="position: absolute; margin-top: 15%; margin-left: 55%; width: 275px;">

			<p3>Welcome to Project Tracking Software</p3><br/><br/>

			<p4>With Project Tracking Software, you can easily plan, follow,
			 maintain and manage the development process of any project as a team!</p4>

			<br/><br/>
			<p1>Don't have an account?</p1>
			<br/><br/>
                        <form action="${pageContext.request.contextPath}/jsp/Register.jsp" method="get">
			<button class = "button" style="height: 65px; width: 160px" > <p1> Register </p1> </button>
                        </form>

		</div>


		

	
		
	
	</body>
</html>
