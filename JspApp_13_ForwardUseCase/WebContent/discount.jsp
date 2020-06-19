<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%  float bill=Float.parseFloat(request.getParameter("bamt"));
    float discount=bill*0.3f;
    float finalbill=bill-discount;
    %>
    <h1 style="color:red ;text-align:center">from discount.jsp::bill details are</h1><br>
    <p align="center">product name::<%=request.getParameter("iname") %><br>
    price:: <%=request.getParameter("iprice") %><br>
    qty::<%=request.getParameter("qty") %><br>
    bill amt::<%=bill %><br>
    discount::<%=discount %><br>
    final bill amt::<%=finalbill %>
    <br>
    <a href="input.html">home</a></p>
    