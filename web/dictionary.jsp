<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: konkon
  Date: 29/08/2019
  Time: 00:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dictionnary</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
    dic.put("hello","xin chao");
    dic.put("hi","xin chao");
    dic.put("i","toi");
    String search = request.getParameter("txtSearch");
    String result = dic.get(search);
    if(result!=null){
        out.println("Word: "+search);
        out.println("Result: "+result);
    }else{
        out.println("Not found");
    }
%>
</body>
</html>
