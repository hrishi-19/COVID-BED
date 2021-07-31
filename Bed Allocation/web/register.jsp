
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Covid-19 Bed Allocation</title>

   
    <link rel="stylesheet" href="index.css">
    <script src='https://smtpjs.com/v3/smtp.js'>
	</script>

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


<div class="section-1">
            <h1 class="reghead">Registration Form</h1>
            <br>
            <form class="regform"  action="regsubmit.jsp" method="POST">
                <table>
                    <tr>
                        <td><p class="para">Name:</p></td>
                        <td><input  class="reg" id="n" type="text" placeholder="Name" name="name"></td>
                    </tr>
                    <tr>
                        <td><p class="para">Age:</p></td>
                        <td><input  class="reg" id="a" type="text" placeholder="Age" name="age"></td>
                        
                                
                        
                    </tr>
                    <tr>
                        <td><p class="para">Mobile:</p></td>
                        <td><input class="reg" id="m" type="number" placeholder="MOBILE" name="number">
                    </tr>
                     
                   
                    <tr>
                        <td>
                            <p class="para">Gender:</p>
                        </td>
                        <td class="gen">
                            <input class="tick" id="g" type="radio" id="male" name="gender" value="male">
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="female">
                            <label for="female">Female</label>
                             
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para" id="ar">Area/Location:</p></td>
                        <td><select class="reg" name="area" >
                                <option value=""> select an area</option>
                                <option value="Yelahanka">Yelahanka</option>
                                <option value="Jalahalli">Jalahalli</option>
                                <option value="Yeshwantpur">Yeshwantpur</option>
                                <option value="Whitefield">Whitefield</option>
                                
                            
                            </select>
                        </td>
                       
                    </tr>
                    <tr>
                        <td><p class="para">SPO2 level:</p></td>
                        <td><input class="reg" type="number" placeholder="%" name="sp"></td>
                    </tr>
                    <tr>
                        
                            <td>
                                <p class="para">Is patient on oxygen cylinder?</p>
                            </td>
                            <td class="yes">
                                <input type="radio" id="yes" name="oxy" value="yes">
                                <label for="yes">YES</label>
                                <input type="radio" id="no" name="oxy" value="no">
                                <label for="no">NO</label>
                                
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">Covid test done?</p>
                        </td>
                        <td class="yes">
                            <input type="radio" id="yes" name="cov" value="yes">
                            <label for="yes">YES</label>
                            <input type="radio" id="no" name="cov" value="no">
                            <label for="no">NO</label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">If yes,Covid result:</p>
                        </td>
                        <td>
                            <input type="radio" id="pos" name="result" value="positive">
                            <label for="yes">positive</label>
                            <input type="radio" id="neg" name="result" value="negative">
                            <label for="no">negative</label>
                            <input type="radio" id="awa" name="result" value="awaiting">
                            <label for="awa">awaiting</label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">CT scan done?:</p>
                        </td>
                        <td>
                            <input type="radio" id="yes" name="ctd" value="yes">
                            <label for="yes">YES</label>
                            <input type="radio" id="no" name="ctd" value="no">
                            <label for="no">NO</label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">If yes,HR-CT score(/25):</p>
                        </td>
                        <td>
                         <input class="reg" type="number" placeholder="HR-CT score" name="ct">
                        </td>
                    </tr>
                   
                   
                    <tr>
                        <td><p class="para">SRF ID:</p></td>
                        <td>
                            <input required class="reg" type="number" placeholder="SRF" name="srf">
                        </td>
                        
                    </tr>
                    <tr>
                        <td><p class="para">BU no:</p></td>
                        <td>
                            <input class="reg" type="number" placeholder="BU" name="bu">
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para">Email:</p></td>
                        <td><input class="reg" id="email" type="email" placeholder="Email" name="email">
                    </tr>
                   
                    <tr>
                        <td>
                            <input class="submitform2" onClick="send()" type="submit" value="submit">
                        </td>
                    </tr>
                </table>
                
            </form>

        </div>
    
 <script type="text/javascript">
		function send(){
			Email.send({
		    Host : "smtp.gmail.com",
		    Username : "covidbedallotment099@gmail.com",
		    Password : "covid123",
		    To : document.getElementById('email').value,
		    From : "covidbedallotment099@gmail.com",
		    Subject : "Form Submission",
		    Body : "Name:"+document.getElementById('n').value+"Age:" + document.getElementById('a').value+ "Patient Number:"+document.getElementById('m').value+"Gender:"+document.getElementById('g').value+ "Area:"+document.getElementById('ar').value 
                             
                   
                    
                             
                    
		}).then(
		  console.log("email sent sucessfully")
		);
		}
	</script>
        
        
        

        
    </body>
    
</html>