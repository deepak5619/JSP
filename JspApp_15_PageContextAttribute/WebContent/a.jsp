<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<h1 style="color:red ;text-align:center">a.jsp</h1>
  <% pageContext.setAttribute("Attr1","val1");
     pageContext.setAttribute("Attr2","val2",pageContext.REQUEST_SCOPE);
     pageContext.setAttribute("Attr3","val3",pageContext.SESSION_SCOPE);
     pageContext.setAttribute("Attr4","val4",pageContext.APPLICATION_SCOPE);
     pageContext.setAttribute("Attr5","Val5",pageContext.SESSION_SCOPE);
     pageContext.setAttribute("Attr6",30);
     %>
     <jsp:forward page="b.jsp"/>