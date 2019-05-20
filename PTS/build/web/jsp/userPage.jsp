<%-- 
    Document   : userPage
    Created on : May 19, 2019, 1:58:53 PM
    Author     : Msi
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width = device-width, initial-scale = 1">
        <title> Homepage</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <script>
            // Change the selector if needed
            var $table = $('table.scroll'),
                    $bodyCells = $table.find('tbody tr:first').children(),
                    colWidth;

            // Adjust the width of thead cells when window resizes
            $(window).resize(function () {
                // Get the tbody columns width array
                colWidth = $bodyCells.map(function () {
                    return $(this).width();
                }).get();

                // Set the width of thead columns
                $table.find('thead tr').children().each(function (i, v) {
                    $(v).width(colWidth[i]);
                });
            }).resize(); // Trigger resize handler


        </script>



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


            table.scroll {
                width: 100%; /* Optional */
                /* border-collapse: collapse; */
                border-spacing: 0;
                border: 2px solid black;
            }

            table.scroll tbody,
            table.scroll thead { display: block; }

            thead tr th { 
                height: 30px;
                line-height: 30px;
                /*text-align: left;*/
            }

            table.scroll tbody {
                height: 100px;
                overflow-y: auto;
                overflow-x: hidden;
            }

            tbody { border-top: 2px solid black; }

            tbody td, thead th {
                width: 20%; /* Optional */
                border-right: 1px solid black;
            }

            tbody td:last-child, thead th:last-child {
                border-right: none;
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
            <form action="${pageContext.request.contextPath}/jsp/CreateBoard.jsp" method="post">
                <button class = "button" style=""> <img src="sources/board.jpg" width="60px" height="45px" alt=""> <br/> 
                    <p1>Create Board</p1> </button><br/><br/>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/jsp/CreateTeam.jsp">   
                <button class = "button" style=""> <img src="sources/team.png" width="60px" height="45px" alt=""> <br/>
                    <p1>Create Team</p1> </button><br/><br/>
            </form>           
        </div>

        <div style="position: absolute; margin-top: 15%; margin-left: 24%; float: middle; ">


            <div class="boardDiv" style=" width: 100px; height: 100px;">
                <p1>My Boards</p1>
                <table class="scroll">
                    <thead>
                        <tr>
                            <th>My Boards</th>
                        </tr>
                    </thead></td>
                    </tr>
                    <tr>
                        <td><form action="../BoardPageServlet" method="POST"><button type="submit" class="button"><%
                            if (((ArrayList) session.getAttribute("BoardNames")).size() > 0) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(0));
                            }
                                request.getSession().setAttribute("thisBoard",((ArrayList) session.getAttribute("BoardNames")).get(0));
                                %></button>
                            </form></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 1) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(1));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 2) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(2));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 3) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(3));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 4) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(4));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 5) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(5));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 6) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(6));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("BoardNames")).size() > 7) {
                                out.println(((ArrayList) session.getAttribute("BoardNames")).get(7));
                            }

                            %></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="boardDiv" >
                <p1>Leaded Boards</p1>
                <table class="scroll">
                    <thead>
                        <tr>
                            <th>Lead</th>
                        </tr>
                    </thead></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 0) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(0));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 1) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(1));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 2) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(2));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 3) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(3));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 4) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(4));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 5) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(5));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 6) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(6));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("LeadedBoardNames")).size() > 7) {
                                out.println(((ArrayList) session.getAttribute("LeadedBoardNames")).get(7));
                            }

                            %></td>
                    </tr>
                    </tbody>
                </table>

            </div>

            <div class="boardDiv" >
                <p1>Participated Boards</p1>
                <table class="scroll">
                    <thead>
                        <tr>
                            <th>Participate</th>
                        </tr>
                    </thead></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 0) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(0));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 1) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(1));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 2) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(2));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 3) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(3));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 4) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(4));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 5) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(5));
                            }

                            %></td>
                    </tr>
                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 6) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(6));
                            }

                            %></td>
                    </tr>

                    <tr>
                        <td><%                                             if (((ArrayList) session.getAttribute("ParticipatedBoardNames")).size() > 7) {
                                out.println(((ArrayList) session.getAttribute("ParticipatedBoardNames")).get(7));
                            }

                            %></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="boardDiv" >
                <p1>Teams</p1>
                <table class="scroll">
                    <thead>
                        <tr>
                            <th>TEAM Boards</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1"); %></td>
                        </tr>
                        <tr>
                            <td><% out.println("My Project1");%></td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>





        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>
