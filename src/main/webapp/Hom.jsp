<%--
  Created by IntelliJ IDEA.
  User: kien3
  Date: 5/18/2025
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

</head>
<body>
<h1> dang nhap thanh cong.</h1>
<% if(request.getAttribute("acc") !=null) { %>
<p1> <%=request.getAttribute("messa") %>  + <%=request.getAttribute("messt") %>  </p1>

<% } %>

</body>
</html>
