<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <br>
   <b>from a.jsp:start </b>
    
    <% int a=10;
    
    
    %>
      <jsp:forward page="b.jsp">
          <jsp:param value="val1" name="p1"/>
          <jsp:param value="<%= a%>" name="p2"/>
      </jsp:forward>
      <b>from a.jsp:end</b>
      
      