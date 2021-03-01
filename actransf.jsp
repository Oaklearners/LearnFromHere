<%@page import="java.sql.*" %>
<html>
<head>
<title> simple ac transfer</title>
</head>
<body>
<%

    try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:hai","system","1232");
    Statement stmt=con.createStatement();
    int from=Integer.parseInt(request.getParameter("at1"));
    int to=Integer.parseInt(request.getParameter("at2"));
     int amt=Integer.parseInt(request.getParameter("at3"));
    int a1=stmt.executeUpdate("update indianbank set bamnt= bamnt -"+ amt+" where acno="+from+"");
    int a2=stmt.executeUpdate("update indianbank set bamnt= bamnt +"+ amt+" where acno="+to+"");
    if(a1>0 && a2>0)
    {
    	out.println("success fully transfered");
    }
    else
    {
    	out.println("fails transcation");
    }}
    
catch(Exception e){}
    
%>

</body></html>