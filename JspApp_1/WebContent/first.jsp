<%!
  static{
    System.out.println("static block");
   }
   public first_jsp(){
     System.out.println("0-param constructor");
     }
     public void jspInit(){
     System.out.println("first.jsp::jspInit()");
     }
     %>
     date and time is=<%=new java.util.Date()%>
     <%
     System.out.println("_jspService(_,_)");
     %>
     <%! public void jspDestroy(){
      System.out.println("first.jsp::Destroy()");
      }
      %>