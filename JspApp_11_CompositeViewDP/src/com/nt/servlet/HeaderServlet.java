package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/headerurl")
public class HeaderServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 PrintWriter pw=null;
      //set response content type
		res.setContentType("text/html");
		//get PrintWriter
		pw=res.getWriter();
		//write header content to the web page
		pw.println("<h1 style='color:white ;text-align:center' >Deepak News World</h1>");
		pw.println("<marquee><h4 style='color:white'>Breaking news::Entire world has been locked due to corona virus</h4></marquee>");
		
		//do not close stream
		//pw.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
