<%-- 
    Document   : create_page
    Created on : May 19, 2019, 6:00:26 PM
    Author     : mathics
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Board</title>
    </head>
    <body>


        <form action="../CreateBoard"  method="post">

            <p>Project Name: </p>
            <input type="text" name="project_name">

            <input type="submit" value="Create Board"/>
        </form>
        <p>After form</p>
    </body>
</html>