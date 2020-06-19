<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <h1 style="color:red; text-align:center">d.jsp </h1>
    <!-- Read and display different scopes of attribute values -->
      attr1 (pageScope) value :: <%=pageContext.findAttribute("Attr1") %> <br>
      attr2 (req scope) value :: <%=pageContext.findAttribute("Attr2") %> <br>
      attr3 (session scope) value :: <%=pageContext.findAttribute("Attr3") %> <br>
      attr4 (application scope) value:: <%=pageContext.findAttribute("Attr4")%>
      