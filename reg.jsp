
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
            
            String s1,s2,s3,s4,s5,s6;
            int s7,s8;
            int acno=1000;
            s1=request.getParameter("t1");
            s2=request.getParameter("t2");
            s3=request.getParameter("t3");
            s4=request.getParameter("t4");
            s5=request.getParameter("t5");
            s6=request.getParameter("t6");
            s7=Integer.parseInt(request.getParameter("t7"));
            s8=Integer.parseInt(request.getParameter("t8"));
            
            int a=stmt.executeUpdate("insert into indianbank values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+s7+","+s8+")");
           if(a>0)
           {
        	   out.println("successs");
           }
           else
           {
        	   out.println("fail");
           }}
        catch(Exception e){out.println("exeception thrown"+e);}
           
           
           
            %>
        
    </body>
</html>
