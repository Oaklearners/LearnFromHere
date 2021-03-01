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
            try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:hai","system","1232");
            Statement stmt=con.createStatement();
            int amt=Integer.parseInt(request.getParameter("t3"));
            int acn=Integer.parseInt(request.getParameter("t2"));
           int a=stmt.executeUpdate("update indianbank set bamnt= bamnt +"+amt+" where acno="+acn+"");
           if(a>0)
           {
        	   out.println("success fully deposited");
           }
           else
           {
        	   out.println("fail to update");
           }
           }
           
        catch(Exception e){out.println("exeception thrown"+e);}
           
           
           
            %>
        
    </body>
</html>
