<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>



<!DOCTYPE html>
<html>
    <%
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
long number = Long.parseLong(request.getParameter("number"));
String gender = request.getParameter("gender");
String area = request.getParameter("area");
int sp = Integer.parseInt(request.getParameter("sp"));
String result = request.getParameter("result");
int ct = Integer.parseInt(request.getParameter("ct"));
Long srf = Long.parseLong(request.getParameter("srf"));
Long bu = Long.parseLong(request.getParameter("bu"));



    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bed","root","");
    PreparedStatement ps = conn.prepareStatement("insert into register(name, age, number, gender, area, sp, result, ct, srf, bu) values(?,?,?,?,?,?,?,?,?,?)");   
    

    ps.setString(1,name);
    ps.setInt(2,age);
    ps.setLong(3,number);
    ps.setString(4,gender);
    ps.setString(5,area); 
    ps.setInt(6,sp);
    ps.setString(7,result); 
    ps.setInt(8,ct);
    ps.setLong(9,srf);
    ps.setLong(10,bu);
            
    int x = ps.executeUpdate();
    
   


%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="index.css">
        <title>Submit</title>
    </head>
    <body>
        <header>

    <a href="index.jsp" class="logo"><img src="images/logo.png"> </a>
    <p class="allocate">Bed Allocation</p>

    

    <nav class="navbar">
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="#">Bed Status</a></li>
            <li><a href="https://www.powerbi.com/view?r=eyJrIjoiOTcyM2JkNTQtYzA5ZS00MWI4LWIxN2UtZjY1NjFhYmFjZDBjIiwidCI6ImQ1ZmE3M2I0LTE1MzgtNGRjZi1hZGIwLTA3NGEzNzg4MmRkNiJ9">BBMP bed tracker</a></li>
            
        </ul>
    </nav>

</header>

        <h1 class="regout">Patient details have been registered successfully<br>
        Check Bed status for hospital details</h1>
        
        
    </body>
</html>
