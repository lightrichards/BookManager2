<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<a href="../webapp/index.jsp">Back to manu</a>
<br>
<br>
<h3>Book list</h3>
<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="80">id</th>
            <th width="120">title</th>
            <th width="120">author</th>
            <th width="120">price</th>
            <th width="120">edit</th>
            <th width="120">delete</th>
        </tr>
        <c:forEach var="book" items="${listBooks}">
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td><a href="<c:url value="/edit/${book.id}"/> ">Edit</a></td>
            <td><a href="<c:url value="/remove/${book.id}"/>">Delete</a> </td>
        </tr>
        </c:forEach>
    </table>
</c:if>
<h1>Add a book</h1>
<c:url var="addAction" value="/books/add">

</c:url>
</body>
</html>
