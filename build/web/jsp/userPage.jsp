<%-- 
    Document   : userPage
    Created on : May 19, 2019, 1:58:53 PM
    Author     : Msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width = device-width, initial-scale = 1">
    <title> Homepage</title>
    <link href="/homePageStyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    
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
		display:button;
		/*type = "button";*/
		/*color:blue;*/
		margin-bottom:20px;
		cursor: pointer;
		padding: 0;
		border: none;
		background: none;
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
		font-size:16px;
		text-align: center;
		background-color: #cccccc; 
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

	.boardDiv
	{
		border-color: "black";
		border-width: 5px;
		float: left;
		margin-left: 40px;
	}
        
        .jumbotron{
            background-color:#2E2D88;
            color:white;
        }
        /* Adds borders for tabs */
        .tab-content {
            border-left: 1px solid #ddd;
            border-right: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            padding: 10px;
        }
        .nav-tabs {
            margin-bottom: 0;
        }
        
    </style>
</head>
	
	<body>
            
            <div class="container">
                <div class="page-header">
                    <h1>My Page</h1
                </div>
            </div>
            
         
            
            <div style="position: absolute; margin-top: 15%; margin-left: 5%; float: left;">
                    <button class = "button" style="margin-left: 15px;"> <img src="sources/settings.png" width="45px" height="45px" alt="" > <br/> 
                            <p1>Settings</p1> </button> <br/><br/>
                    <button class = "button" style=""> <img src="sources/board.jpg" width="60px" height="45px" alt=""> <br/> 
                            <p1>Create Board</p1> </button><br/><br/>
                    <button class = "button" style=""> <img src="sources/team.png" width="60px" height="45px" alt=""> <br/>
                            <p1>Create Team</p1> </button><br/><br/>

            </div>

                <div style="position: absolute; margin-top: 15%; margin-left: 24%; float: middle;">
                    <div class="jumbotron">
                    <p1> Name</p1>

                    <div class="boardDiv" >
                            <p1>My Boards</p1>
                    </div>

                    <div class="boardDiv" >
                            <p1>Leaded Boards</p1>
                    </div>

                    <div class="boardDiv" >
                            <p1>Participated Boards</p1>
                    </div>

                    <div class="boardDiv" >
                            <p1>Teams</p1>
                    </div>
                    
                    </div>
                </div>
            
            
            
            
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>
