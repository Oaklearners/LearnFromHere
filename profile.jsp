<%-- 
    Document   : reg
    Created on : 6 Nov, 2015, 9:27:24 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>new registration</title>
   <%@page import="java.sql.*" %>
    </head>
    <body>
        <%
        //int a=0;
            try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:hai","system","1232");
            Statement stmt=con.createStatement();
          // int ac=Integer.parseInt(request.getParameter("ac1"));
         
           
            ResultSet rs=stmt.executeQuery("select * from indianbank ");
            while(!rs.next())
            {
            
			out.println("\nName:"+rs.getString("name"));
			out.println("\nfather Name:"+rs.getString("fname"));
			out.println("\naddress"+rs.getString("addr"));
			out.println("\npno:"+rs.getString("pno"));
			out.println("\nemail:"+rs.getString("email"));
            }
			
			
			   
         
            
            
            }
        catch(Exception e){out.println("exeception thrown"+e);}
           
          
           
            %>
        
    </body>
</html>
