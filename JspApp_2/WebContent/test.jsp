<%!public void jspInit(){
    ServletConfig cg=getServletConfig();
    System.out.println("p1:init parameter"+cg.getInitParameter("p1"));
    ServletContext sc=getServletContext();
    System.out.println("p2:init parameter"+sc.getInitParameter("p2"));
    }
    %>
    config implicit object init parameter value <%=config.getInitParameter("p1")%>
    <br>application implicit object init parameter value <%=application.getInitParameter("p2")%>