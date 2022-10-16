<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost/faculdade"
        user="root" password="Nin@123"
    />
     
    <sql:query var="lista"  dataSource="${myDS}">
        SELECT * FROM Teste;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista de usuarios</h2></caption>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Telefone</th>
            </tr>
            <c:forEach var="usuario" items="${lista.rows}">
                <tr>
                    <td><c:out value="${usuario.id}" /></td>
                    <td><c:out value="${usuario.nome}" /></td>
                    <td><c:out value="${usuario.telefone}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>