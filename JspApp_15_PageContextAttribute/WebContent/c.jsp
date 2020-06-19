<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <h1 style="color:red; text-align:center">c.jsp</h1>
 attr1 value(pageScope value)::<%=pageContext.findAttribute("Attr1")%><br>
 attr2 value(RequestScope value)::<%=pageContext.findAttribute("Attr2")%><br>
 attr3 value(SessionScope value)::<%=pageContext.findAttribute("Attr3")%><br>
 attr4 value(ApplicationScope value)::<%=pageContext.findAttribute("Attr4")%><br>
 attr5 value(SessionScope value)::<%=pageContext.findAttribute("Attr5")%><br>
 attr6 value::<%=pageContext.findAttribute("Attr6")%>