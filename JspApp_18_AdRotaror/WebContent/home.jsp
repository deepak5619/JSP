<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="service" class="com.nt.service.RotatorService" scope="application"/>

<% //call business method
    service.nextAdvertisement();
    //enable auto refresh
    response.setIntHeader("refresh",3);
    %>
    
   <p align="center">
       <a href="<jsp:getProperty property="links" name="service"/>">
          <img src="<jsp:getProperty property="image" name="service"/>" height="200" width="400"/>
       </a>
  </p>