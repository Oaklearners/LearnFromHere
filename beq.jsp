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
    </head>
    <body>
        <%
        int a=0;
            try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:hai","system","1232");
            Statement stmt=con.createStatement();
            int ac=Integer.parseInt(request.getParameter("a2"));
            
           // out.println(ac);
            
            ResultSet rs=stmt.executeQuery("select * from indianbank ");
            
            while(rs.next())
            {
            	
           if(ac==rs.getInt("acno")){ 
			out.println("welcome "+rs.getString("name"));
			
			out.println("\n your account balance is:"+rs.getInt("bamnt"));
			//out.println(""+rs.getInt("acno"));}
                    a=1;   
         }
            
            
            }}
        catch(Exception e){out.println("exeception thrown"+e);}
           
           if(a==0)
           {
        	   out.println("no record found");
        	   
           }
           
            %>
        
    </body>
</html>
