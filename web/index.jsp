<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 05/09/2019
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
  <h2> Calculator </h2>
  <form method="post" action="calculate">
    <c:if test='${requestScope["number1"] != null}'>
      <input type="number" placeholder="Enter number 1" name="number1" value='${requestScope["number1"]}'>
    </c:if>
    <c:if test='${requestScope["number2"] != null}'>
      <input type="number" placeholder="Enter number 2" name="number2" value='${requestScope["number2"]}'>
    </c:if>
    <c:if test='${requestScope["number1"] == null}'>
      <input type="number" placeholder="Enter number 1" name="number1">
    </c:if>
    <c:if test='${requestScope["number2"] == null}'>
      <input type="number" placeholder="Enter number 2" name="number2">
    </c:if>
    <br/>
    <input type="submit" value="Add(+)" name="operator">
    <input type="submit" value="Sub(-)" name="operator">
    <input type="submit" value="Mul(*)" name="operator">
    <input type="submit" value="Div(/)" name="operator">
  </form>
  <p>
    <c:if test='${requestScope["message"] != null}'>
      <span class="message">${requestScope["message"]}</span>
    </c:if>
  </p>
  </body>
</html>
