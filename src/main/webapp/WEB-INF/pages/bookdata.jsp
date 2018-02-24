<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>
    <link rel="stylesheet" href="/css/bookdata.css"/>
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/content.css">
</head>
<body>
<header>
  <label id="logo">Book Management</label>
</header>
<div class="content">
    <h1>Book Details</h1>
<table class="tg">
  <tr>
    <th width="80">ID</th>
    <th width="120">Title</th>
    <th width="120">Author</th>
    <th width="120">Price</th>
  </tr>
  <tr>
    <td>${book.id}</td>
    <td>${book.title}</td>
    <td>${book.author}</td>
    <td>${book.price/100}${book.price%100}</td>
  </tr>
</table>
    <a href="/books">Back to main menu</a>
</div>
</body>
</html>