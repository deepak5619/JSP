<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String name=request.getParameter("iname");
   float price=Float.parseFloat(request.getParameter("iprice"));
   float qty=Float.parseFloat(request.getParameter("qty"));
   float billamt=price*qty;
   if(billamt>50000){ %>
	   <jsp:forward page="discount.jsp">
	     <jsp:param value="<%=billamt%>" name="bamt"/>
       </jsp:forward>
     <% }
   else{ %>
	   <h1 style="color:red ;text-align:center">from bill.jsp::bill details are</h1><br>
	   <p 
	   align="center"> product name::<%=name %><br>
	    price:: <%=price %><br>
	    qty::<%=qty %><br>
	    final bill::<%=billamt %><br>
	    <a href="input.html">home</a></p>
   <% }
   %>
