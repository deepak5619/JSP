<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- locate java bean class -->
<jsp:useBean id="cb" class="com.nt.jsp.CustomerBean" scope="session"/>

<!-- set values to bean property -->
<%-- <jsp:setProperty property="cno" name="cb" value="101"/>
<jsp:setProperty property="cname" name="cb" value="deepak"/>
<jsp:setProperty property="cadd" name="cb" value="bhopal"/>
<jsp:setProperty property="billAmt" name="cb" value="1500"/> --%>

<!-- set values to bean property using param attribute using query param appended to request-->
<%-- <jsp:setProperty property="cno" name="cb" param="custNo"/>
<jsp:setProperty property="cname" name="cb" param="custName"/>
<jsp:setProperty property="cadd" name="cb" param="custAdd"/>
<jsp:setProperty property="billAmt" name="cb" param="custBill"/> --%>

<!-- if request param name is matching with bean property name then use * as property value -->
<jsp:setProperty property="*" name="cb"/>
<br> <h1 style="color:red;text-align:center"> values are set to bean properties </h1>