<%@page info="this report generation page" language="java" import="java.util.*" contentType="text/html"%> 
<%= new Date() %><br>
<%= getServletInfo() %>
<%@ page buffer="1kb" autoFlush="true"%>
<% for(int i=0;i<100000;i++){
     out.print("hello"+i);%><br>
<%     }
    %>