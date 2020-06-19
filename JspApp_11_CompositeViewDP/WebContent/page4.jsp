<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <table width="100%" height="100%">
   <tr height="25%"><td colspan="3" bgcolor="purple"><jsp:include page="/headerurl"/></td></tr>
   <tr><td width="20%" bgcolor="cyan"><%@include file="menu.html" %></td><td width="50%" bgcolor="pink"><jsp:include page="corona.jsp"/></td><td bgcolor="cyan"><table><tr><td><jsp:include page="weather_report.jsp"/></td></tr><tr><td><jsp:include page="horoscope.jsp"/></td></tr></table></td></tr>
   <tr height="15%"><td colspan="3" bgcolor="purple"><%@include file="footer.html" %></td></tr>
 </table>