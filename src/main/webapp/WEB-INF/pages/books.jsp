<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>
    <link rel="stylesheet" href="/css/content.css">
    <link rel="stylesheet" href="/css/books.css">
    <link rel="stylesheet" href="/css/header.css">
</head>
<body>
<header>
    <label id="logo">Book Management</label>
</header>
<div class="content">
<c:if test="${!empty listBooks}">
    <h1>Book List</h1>
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Author</th>
            <th width="120">Price</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                <td>${book.author}</td>
                <td>${book.price/100}${book.price%100}</td>
                <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<div class="inner">
    <h1>Add a Book</h1>

<c:url var="addAction" value="/books/add"/>

<form:form action="${addAction}" modelAttribute="book">

        <c:if test="${!empty book.title}">
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
            <br>

            <form:input path="id" readonly="true"  disabled="true"/>
            <br>
            <%--<form:hidden path="id"/>--%>
        </c:if>
    <form:label path="title">
        <spring:message text="Title"/>
    </form:label>
    <br>



    <form:input path="title"/>
    <br>
    <%--<form:hidden path="title"/>--%>

    <form:label path="author">
        <spring:message text="Author"/>
    </form:label>
    <br>

    <form:input path="author"/>
    <br>

    <form:label path="price">
        <spring:message text="Price"/>
    </form:label>
    <br>

    <form:input path="price"/>
    <br>
    <br>

    <c:if test="${!empty book.title}">
        <input type="submit" class="bt" value="<spring:message text="Edit Book"/>"/>
        <br>
        <br>
    </c:if>

    <c:if test="${empty book.title}">
        <input type="submit" class="bt" value="<spring:message text="Add Book"/>"/>
        <br>
        <br>
    </c:if>


</form:form>
</div>
</div>
</body>
</html>
