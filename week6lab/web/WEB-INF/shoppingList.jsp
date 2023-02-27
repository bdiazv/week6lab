<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <c:out value="${name}" />!</h1>
        
        <h1>List</h1>
        
        <form action="shopping-list" method="post">
            <input type="hidden" name="action" value ="add">
            <label>Item: <input type="text" name="item" id="item"></label>
            <button type="submit">submit</button>
        </form>
        
        <br>
        <br>
        
        <form action="shopping-list" method="post">
            <input type="hidden" name="action" value ="delete">
            <c:forEach var="item" items="${items}">
                <label> <input type ="radio"  name="item" value="${item}"><c:out value="${item}"/></label><br>
                </c:forEach>
                <br>
                <button type="submit">Delete</button>
                
        </form> <br>
        
        <form action="shopping-list" method="post">
            <input type="hidden" name="action" value="logout">
            <button type="submit">LogOut</button>
        </form>
    </body>
</html>
