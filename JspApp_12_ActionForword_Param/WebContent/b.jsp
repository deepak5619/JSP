<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <b>b.jsp:start</b>
  <%= new java.util.Date() %>
 <br> p1 value:: <%= request.getParameter("p1") %><br>
  p2 value:: <%= request.getParameter("p2") %>