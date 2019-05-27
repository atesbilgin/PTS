<%-- 
    Document   : BoardPage
    Created on : May 19, 2019, 7:17:19 PM
    Author     : Msi
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
    </head>
    <body>

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
                height: 400px;
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
        <button class = "button" style=""> <img src="sources/board.jpg" width="60px" height="45px" alt=""> <br/> 
            <p1>Create Board</p1> </button><br/><br/>
        <button class = "button" style=""> <img src="sources/team.png" width="60px" height="45px" alt=""> <br/>
            <p1>Create Team</p1> </button><br/><br/>

    </div>

    <div class="boardDiv" style=" width: 1000px; height: 900px; margin-left: 20%; margin-top: 5%">
        <p1>My Boards</p1>
        <table class="scroll">
            <thead>
                <tr>
                    <th><%
                        out.println(request.getSession().getAttribute("thisBoard"));
                        %></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%                                             if (((ArrayList) session.getAttribute("thisList")).size() > 0) {
                            out.println(((ArrayList) session.getAttribute("thisList")).get(0));
                        }

                        %>

                        <div>
                            Card1
                            <button class = "button" style="border-style: solid; ">Display Comments </button>
                            <button class = "button" style="border-style: solid; ">Display Issues </button>
                            <button class = "button" style="border-style: solid; ">Display Files </button>
                            <button class = "button" style="border-style: solid; ">Attach Files </button>
                            <button class = "button" style="border-style: solid; ">Make Comment </button>

                        </div>
                    </td>
                </tr>
                 <tr>
                    <td><%                                             if (((ArrayList) session.getAttribute("thisList")).size() > 1) {
                            out.println(((ArrayList) session.getAttribute("thisList")).get(1));
                        }

                        %>

                        <div>
                            Card1
                            <button class = "button" style="border-style: solid; ">Display Comments </button>
                            <button class = "button" style="border-style: solid; ">Display Issues </button>
                            <button class = "button" style="border-style: solid; ">Display Files </button>
                            <button class = "button" style="border-style: solid; ">Attach Files </button>
                            <button class = "button" style="border-style: solid; ">Make Comment </button>

                        </div>
                    </td>
                </tr>
                 <tr>
                    <td><%                                             if (((ArrayList) session.getAttribute("thisList")).size() > 2) {
                            out.println(((ArrayList) session.getAttribute("thisList")).get(2));
                        }

                        %>

                        <div>
                            Card1
                            <button class = "button" style="border-style: solid; ">Display Comments </button>
                            <button class = "button" style="border-style: solid; ">Display Issues </button>
                            <button class = "button" style="border-style: solid; ">Display Files </button>
                            <button class = "button" style="border-style: solid; ">Attach Files </button>
                            <button class = "button" style="border-style: solid; ">Make Comment </button>

                        </div>
                    </td>
                </tr>
                 <tr>
                    <td><%                                             if (((ArrayList) session.getAttribute("thisList")).size() > 3) {
                            out.println(((ArrayList) session.getAttribute("thisList")).get(3));
                        }

                        %>

                        <div>
                            Card1
                            <button class = "button" style="border-style: solid; ">Display Comments </button>
                            <button class = "button" style="border-style: solid; ">Display Issues </button>
                            <button class = "button" style="border-style: solid; ">Display Files </button>
                            <button class = "button" style="border-style: solid; ">Attach Files </button>
                            <button class = "button" style="border-style: solid; ">Make Comment </button>

                        </div>
                    </td>
                </tr>
                 <tr>
                    <td><%                                             if (((ArrayList) session.getAttribute("thisList")).size() > 4) {
                            out.println(((ArrayList) session.getAttribute("thisList")).get(4));
                        }

                        %>

                        <div>
                            Card1
                            <button class = "button" style="border-style: solid; ">Display Comments </button>
                            <button class = "button" style="border-style: solid; ">Display Issues </button>
                            <button class = "button" style="border-style: solid; ">Display Files </button>
                            <button class = "button" style="border-style: solid; ">Attach Files </button>
                            <button class = "button" style="border-style: solid; ">Make Comment </button>

                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>


    <div style="position: absolute; margin-top: 15%; margin-left:87%; float: right;">
        <button class = "button" style="margin-left: 15px;"> <img src="sources/Chatroom.png" width="45px" height="45px" alt="" > <br/> 
            <p1>Chat</p1> </button> <br/><br/>
        <button class = "button" style=""> <img src="sources/notification.png" width="60px" height="45px" alt=""> <br/> 
            <p1>Notifications</p1> </button><br/><br/>
        <button class = "button" style=""> <img src="sources/homeP.jpg" width="60px" height="45px" alt=""> <br/>
            <p1>Return Homepage</p1> </button><br/><br/>

    </div>

    <div style="position: absolute; margin-top: 15%; margin-left: 24%; float: middle; ">



    </div>

</body>
</html>
