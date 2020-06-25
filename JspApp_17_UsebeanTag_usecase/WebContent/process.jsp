<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- create or locate service class object -->
<jsp:useBean id="service" class="com.nt.service.SalleryReportMgmtServiceImpl"  type="com.nt.service.SalleryReportMgmtService" scope="application"/>
<!-- create or locate dto class object -->
<jsp:useBean id="dto" class="com.nt.dto.EmployeeDto" scope="request"/>
<!-- set form data to bean property -->
<jsp:setProperty property="*" name="dto"/>
<% service.generateReport(dto);  %>
<h1 style="color:red;text-align:center"> Employee Details are  </h1><br>
        <p align="center"><b> Employee name :::  <jsp:getProperty name="dto"  property="ename"/>  <br></b>
        <b> Employee Address :::  <jsp:getProperty name="dto"  property="eadd"/> <br> </b>
        <b> Employee Basic Salary :::  <jsp:getProperty name="dto"  property="basicSallery"/> <br> </b>
        <b> Employee gross Salary :::  <jsp:getProperty name="dto"  property="grossSallery"/> <br> </b>
         <b> Employee net Salary :::  <jsp:getProperty name="dto"  property="netSallery"/> <br> </b>
        
        <!-- add home hyperlink -->
        <a href="input.html">home</a></p>
