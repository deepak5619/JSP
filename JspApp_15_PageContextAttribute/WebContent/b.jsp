<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<h1 style="color:red;text-align:center">b.jsp</h1>
attr1 value(page scope)::<%= pageContext.getAttribute("Attr1") %><br>
attr2 value(request scope)::<%= pageContext.getAttribute("Attr2",pageContext.REQUEST_SCOPE)%><br>
attr3 value(session scope)::<%=pageContext.getAttribute("Attr3",pageContext.SESSION_SCOPE) %><br>
attr4 value(Applicaton scope)::<%=pageContext.getAttribute("Attr4",pageContext.APPLICATION_SCOPE)%><br>
<jsp:forward page="c.jsp"/>