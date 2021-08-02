<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Status</title>

   
    <link rel="stylesheet" href="index.css">

</head>
<body>
   
    <%
        
         Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bed","root","");
    String name="";
    int age=0;
    long number=0;
    String area ="";
    String gender="";    
    int sp=0;
    String result="";
    
        if((request.getParameter("bu")!="" && request.getParameter("bu")!=null)|| (request.getParameter("srf")!="" && request.getParameter("srf")!=null))
        {
            
            long id = 0;
            if(request.getParameter("bu")!="")
            {
                id = Long.parseLong(request.getParameter("bu"));
                
            }
            else
            {
                 id = Long.parseLong(request.getParameter("srf"));
            }
               PreparedStatement ps = conn.prepareStatement("select * from register where (srf=? or bu=?)");
               ps.setLong(1,id);
               ps.setLong(2,id);
               ResultSet rs = ps.executeQuery();
               if(rs.next())
               {
                    name = rs.getString(1);
                 age = rs.getInt(2);
                 number = rs.getLong(3);
                  gender = rs.getString(4);
                  area = rs.getString(5);
                   
               }
               
               
                  
       
               
               
        }
        
            
            
        %>
   
     <header>

    <a href="index.jsp" class="logo"><img src="images/logo.png"> </a>
    <p class="allocate">Bed Allocation</p>

    

    <nav class="navbar">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a class="active" href="#">Bed Status</a></li>
            <li><a href="https://www.powerbi.com/view?r=eyJrIjoiOTcyM2JkNTQtYzA5ZS00MWI4LWIxN2UtZjY1NjFhYmFjZDBjIiwidCI6ImQ1ZmE3M2I0LTE1MzgtNGRjZi1hZGIwLTA3NGEzNzg4MmRkNiJ9">BBMP bed tracker</a></li>
            
        </ul>
    </nav>

</header>
    <div class="asset">
        <p><h1 class="checkhead">Check your bed status</h1></p>
     <p><h3 class="ortxt">(OR)</h3></p>
    
        <form class="status" >
            <table>
                <tr><td><p class="tablecheck">BU Number:</p></td>
                    <td><input class="tablecheckin" type="number" name="bu" placeholder="BU NUMBER"></td>
                </tr>
                <tr><td><p class="tablecheck">SRF Number:</p></td>
                    <td><input class="tablecheckin" type="number" name="srf" placeholder="SRF Number"></td>
                </tr>
                <tr>
                    <td><button class="btn1">Check</button></td>
                </tr>
            </table>
        </form>
    </div>
    <div class="Details">
         
         <p>
             Name: <%=name %><br>
             Age: <%=age %><br>
             Patient Number: <%=number %><br>
             Gender: <%=gender %><br>
             Area: <%=area %><br>
             Alloted Hospital:<%=area%> government hospital<br>
           
         </p>
         
         
         
     </div>
    </body>
</html>