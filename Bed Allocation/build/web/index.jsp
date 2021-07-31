<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Covid-19 Bed Allocation</title>

   
    <link rel="stylesheet" href="index.css">

</head>
<body>
    <%
        String msg = "";
        if("post".equalsIgnoreCase(request.getMethod()))
        {
             String un = request.getParameter("username");
    String area = "";
    if(un.contains("Yelahanka"))
    {
        area = "Yelahanka";
        
    }
    else if (un.contains("Jalahalli"))
    {
        area = "Jalahalli";
        
    }
    else if (un.contains("Yeshwantpur"))
    {
        area = "Yeshwantpur";
      
    }
    else if (un.contains("Whitefield"))
    {
        area = "Whitefield";
      
    }
    else
    {
        
         msg = "Enter valid credentials";
        
      
        
    }
   if(area!="" && area!=null)
   {
       session.setAttribute("session", area);
       response.sendRedirect("hospital.jsp?area="+area);
       
   }
            
        }
       
    %>
    
   

<header>

    <a href="index.jsp" class="logo"><img src="images/logo.png"> </a>
    <p class="allocate">Bed Allocation</p>

    

    <nav class="navbar">
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="status.jsp">Bed Status</a></li>
            <li><a href="https://www.powerbi.com/view?r=eyJrIjoiOTcyM2JkNTQtYzA5ZS00MWI4LWIxN2UtZjY1NjFhYmFjZDBjIiwidCI6ImQ1ZmE3M2I0LTE1MzgtNGRjZi1hZGIwLTA3NGEzNzg4MmRkNiJ9" target="_blank" >BBMP bed tracker</a></li>
            
        </ul>
    </nav>

</header>
    <img class="bgimg" src="images/bg3.jpeg" alt="">


<section class="click">
    
   
<a  href="register.jsp"><h1 class="clickreg">Click Here for Bed Registration</h1></a>
</form>

    
<div class="login2">
    <p class="sign" align="center">Hospital Login</p>
    <form class="form1"  method="post" >
      <input required class="un " type="text" align="center" name="username" placeholder="Username">
      <input required class="pass" type="password" align="center" name="password" placeholder="Password">
      <h3 class="loginfail"> <%=msg%></h3>
      
      <input class="submitform" align="center" type="submit" value="Sign In">
    </form>



</section>






<section class="protect" id="protect">
    
   


    <h1 class="heading">Take steps to <span>protect</span> yourself</h1>
    

    <div class="box-container">

        <div class="box">
            <img src="images/mask.png" alt="">
            <h3>Wear A Face Mask</h3>
            
            <a href="#" class="btn">learn more</a>
        </div>

        <div class="box">
            <img src="images/hand wash.png" alt="">
            <h3>Wash Your Hands</h3>
            
            <a href="#" class="btn">learn more</a>
        </div>

        <div class="box">
            <img src="images/distance.jpg" alt="">
            <h3>Avoid Close Contact</h3>
            
            <a href="#" class="btn">learn more</a>
        </div>

    </div>

</section>



<section class="prevent" id="prevent">

    

    <div class="row">

        <div class="content">
            <h1 class="heading">Things <span>to do</span> during covid</h1>
            <br>
            
            <ul>
                <li>Have a healthy & Nutritional diet</li>
                <li>Stay calm & Self-isolate yourself</li>
                <li>Frequently monitor spo2 levels & body temperature</li>
                <li>Keep the Room well-ventilated and circulate fresh air</li>
            </ul>
        </div>

        <div class="image">
            <img src="images/health.jpg" alt="">
        </div>

    </div>

</section>


<section class="breath" id="breath">

    <h1 class="heading">If you experience <span>breathlessness</span></h1>

    <div class="box-container">

        <div class="box">
            <span>1</span>
            <img src="images/ventilation.jpg" alt="">
            <h3>Keep the room well ventilated</h3>
        </div>

        <div class="box">
            <span>2</span>
            <img src="images/proning.jpg" alt="">
            <h3>Practice proning</h3>
        </div>

        <div class="box">
            <span>3</span>
            <img src="images/exercise.jpg" alt="">
            <h3>Practice breathing excercises</h3>
        </div>

        <div class="box">
            <span>4</span>
            <img src="images/oxymeter.jpg" alt="">
            <h3>Frequently monitor spo2 levels</h3>
        </div>

        <div class="box">
            <span>5</span>
            <img src="images/call.jpg" alt="">
            <h3>In case of emergency call 108</h3>
        </div>

    </div>

</section>



<section class="footer">

    <div class="box-container">

    
        <div class="box">
            
            <h3>Useful Links</h3>
            
                <a href="https://www.who.int/" target="_blank">WHO</a>
                <a href="https://selfregistration.cowin.gov.in/" target="_blank">COWIN Portal</a>
                <a href="https://bbmp.gov.in/indexenglish.html" target="_blank">BBMP</a>
                <a href="https://www.covidwar.karnataka.gov.in/service1" target="_blank">Covid Test Reports</a>
                
            </div>
        

        

    </div>

    <h1 class="credit"> copyright &#169 Covid-19 Bed Allocation  </h1>

</section>





<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script src="js/script.js"></script>


</body>
</html>