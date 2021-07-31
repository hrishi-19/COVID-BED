<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital</title>
         <link rel="stylesheet" href="index.css">
         <style>
             .data td {
    
    border: 1px;
    padding: 15px;
    border: 1px solid;
}
             
             
         </style>
    </head>
    <body>
        <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bed","root","");
    String area = (String)session.getAttribute("session");
   /*
    area
           */
    
    if(request.getParameter("srf")!=null)
    {
        long srf= Long.parseLong(request.getParameter("srf"));
        PreparedStatement ps1 = conn.prepareStatement("delete from register where srf=?");
        ps1.setLong(1,srf);
        ps1.executeUpdate();
        
    }
    
    PreparedStatement ps = conn.prepareStatement("select * from register where area=?");
    ps.setString(1, area);
    ResultSet rs = ps.executeQuery();
    String name="";
    int age=0;
    long number=0;
    String gender="";   
    int sp=0;
    String result="";
    int ct=0;
    long srf=0;
    long bu=0;
    
    
    
 
%>   
        
        
        
        

  <header>

    <a href="index.jsp" class="logo"><img src="images/logo.png"> </a>
    <p class="allocate">Bed Allocation</p>

    

    <nav class="navbar">
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="status.jsp">Bed Status</a></li>
            <li><a href="https://www.powerbi.com/view?r=eyJrIjoiOTcyM2JkNTQtYzA5ZS00MWI4LWIxN2UtZjY1NjFhYmFjZDBjIiwidCI6ImQ1ZmE3M2I0LTE1MzgtNGRjZi1hZGIwLTA3NGEzNzg4MmRkNiJ9">BBMP bed tracker</a></li>
            
        </ul>
    </nav>

</header>

  <table class="data">
  <tr>
    <th>Name</th>
    <th>Age</th>
    <th>number</th>
    <th>gender</th>
    <th>Area</th>
    <th>Spo2 Level</th>
    <th>Covid result</th>
    <th>CT-Score</th>
    <th>SRF ID</th>
    <th>BU Number</th>
    <th>Discharge</th>
    
  </tr>
  <%
    while(rs.next())
    {
        name = rs.getString(1);
        age = rs.getInt(2);
        number = rs.getLong(3);
       gender = rs.getString(4);
        area = rs.getString(5);
        sp = rs.getInt(6);
        result = rs.getString(7);
        ct = rs.getInt(8);      
        srf = rs.getLong(9);
        bu = rs.getLong(10);
        
     
    %>
  
  
  <tr>
    <td> <%=name%></td>
    <td><%=age%></td>
    <td><%=number%></td>
     <td><%=gender%></td>
    <td><%=area%></td>
    <td><%=sp%></td>
     <td><%=result%></td>
    <td><%=ct%></td>
    <td><%=srf%></td>
    <td><%=bu%></td>
    <td><a href="hospital.jsp?srf=<%=srf %>"><button class="dis">Discharge</button> </a>  </td>
  </tr>
  
  <%
    
    } 
  
  %>
  
 
</table>
  
  
    </body>
</html>
