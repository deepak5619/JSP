<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- locate java bean class -->
<jsp:useBean id="cb" class="com.nt.jsp.CustomerBean" scope="session"/>

<!-- get java bean class properties values-->
<jsp:getProperty property="cno" name="cb"/>
<jsp:getProperty property="cname" name="cb"/>
<jsp:getProperty property="cadd" name="cb"/>
<jsp:getProperty property="billAmt" name="cb"/>