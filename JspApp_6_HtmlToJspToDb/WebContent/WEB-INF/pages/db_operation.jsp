<%@ page import="java.sql.*"%>

<%! 
Connection con=null;
ResultSet rs=null;
PreparedStatement ps1=null,ps2=null;
int result=0;
   public void jspInit(){
	
	try{
		
	//get acces to servlet config object
	 ServletConfig cg=getServletConfig();
	///get init param value
     String driver=getInitParameter("driver");
     String url=getInitParameter("url");
     String user=getInitParameter("user");
     String pwd=getInitParameter("pwd");
     //register jdbc driver software
     Class.forName(driver);
     //establish the connection
     con=DriverManager.getConnection(url,user,pwd);
     ps1=con.prepareStatement("INSERT INTO PRODUCT VALUES(SID.NEXTVAL,?,?,?)");
     ps2=con.prepareStatement("SELECT PID,PNAME,PRICE,QTY FROM PRODUCT");
	}//try
 	catch(SQLException se){
 		se.printStackTrace();
 	}
 	catch(ClassNotFoundException cnf){
 		cnf.printStackTrace();
 	}
 	catch(Exception e){
 		e.printStackTrace();
 	}
}//jspinit()
   %>
   <%
   //get the s1 param value
      String s1=request.getParameter("s1");
     if(s1.equalsIgnoreCase("link")){
    	 rs=ps2.executeQuery();%>
    	 <h1 style="color:red;text-align:center"> List of all Products  </h1>
    	 <table border="1" align="center" bgcolor="pink">
    	   <tr bgcolor=red><th>product id</th><th>product name</th><th>price</th><th>quantity</th></tr>
    	   <%
    	   while(rs.next()){
    		   %>
    		   <tr><td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getFloat(3) %></td><td><%=rs.getInt(4) %></td></tr>
    	   <% }//while%>
    	 </table>
     <% }//if
     else{
       String name=request.getParameter("pname");
       float price=Float.parseFloat(request.getParameter("price"));
       int qty=Integer.parseInt(request.getParameter("qty"));
       ps1.setString(1,name);
       ps1.setFloat(2,price);
       ps1.setInt(3,qty);
       result=ps1.executeUpdate();
       if(result==0){
    	   %><h1 style="color:red; text-align:center">records not updated</h1>
    	   <% }//if
       else %>
        <h1 style="color:green; text-align:center">records updated</h1>
       <%
     }//else
     %>
     <br><h1 style="text-align:center;color:blue"><a href="register.html">home</a></h1>
     
  <%! public void jspDestroy(){
	  
	  //close objs
	    try{
	    	if(rs!=null)
	    		rs.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	  
	    try{
	    	if(ps1!=null)
	    		ps1.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	    
	    try{
	    	if(ps2!=null)
	    		ps2.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	    
	    try{
	    	if(con!=null)
	    		con.close();
	    }
	  catch(SQLException se){
		  se.printStackTrace();
	  }
	  
  
  }//jspDestroy()
   %>