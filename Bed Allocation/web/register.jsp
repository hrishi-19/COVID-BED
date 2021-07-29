<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Covid-19 Bed Allocation</title>

    <script src='https://smtpjs.com/v3/smtp.js'>
	</script>
    <link rel="stylesheet" href="index.css">

</head>
<body>
    


<header>

    <a href="index.jsp" class="logo"><img src="images/logo.png"> </a>
    <p class="allocate">Bed Allocation</p>

    

    <nav class="navbar">
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="#">Bed Status</a></li>
            <li><a href="#">About</a></li>
            
        </ul>
    </nav>

</header>


<div class="section-1">
            <h1 class="reghead">Registration Form</h1>
            <br>
            <form class="regform">
                <table>
                    <tr>
                        <td><p class="para">Name:</p></td>
                        <td><input  class="reg"type="text" placeholder="Name"></td>
                    </tr>
                    <tr>
                        <td><p class="para">Age:</p></td>
                        <td><input class="reg" type="number" placeholder="Age">
                        
                    </tr>
                    <tr>
                        <td><p class="para">Mobile:</p></td>
                        <td><input class="reg" type="number" placeholder="MOBILE">
                    </tr>
                    <tr>
                        <tr>
                        <td><p class="para">Email:</p></td>
                        <td><input class="reg" id="to" type="text" placeholder="email">
                    </tr>
                    <tr>
                        <td>
                            <p class="para">Gender:</p>
                        </td>
                        <td>
                            <input class="tick" type="radio" id="male" name="gender" value="male">
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="female">
                            <label for="female">Female</label>
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para">Area/Location:</p></td>
                        <td><input class="reg" type="text" placeholder="Area"></td>
                       
                    </tr>
                    <tr>
                        <td><p class="para">SPO2 level:</p></td>
                        <td><input class="reg" type="number" placeholder="%"></td>
                    </tr>
                    <tr>
                        
                            <td>
                                <p class="para">Is patient on oxygen cylinder?</p>
                            </td>
                            <td>
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
                        <td>
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
                            <input type="radio" id="pos" name="res" value="pos">
                            <label for="yes">positive</label>
                            <input type="radio" id="neg" name="res" value="neg">
                            <label for="no">negative</label>
                            <input type="radio" id="awa" name="res" value="awa">
                            <label for="awa">awaiting</label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">CT scan done?:</p>
                        </td>
                        <td>
                            <input type="radio" id="yes" name="ct" value="yes">
                            <label for="yes">YES</label>
                            <input type="radio" id="no" name="ct" value="no">
                            <label for="no">NO</label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">If yes,HR-CT score(/25):</p>
                        </td>
                        <td>
                         <input class="reg" type="number"placeholder="HR-CT score">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">Prefer govt/pvt/any hospital::</p>
                        </td>
                        <td>
                            <input type="radio" id="gov" name="hos" value="gov">
                            <label for="gov">govt</label>
                            <input type="radio" id="pvt" name="hos" value="pvt">
                            <label for="pvt">pvt</label>
                            <input type="radio" id="any" name="hos" value="any">
                            <label for="any">any</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="para">Required bed::</p>
                        </td>
                        <td>
                            <input type="radio" id="gen" name="bed" value="gen">
                            <label for="gen">GEN</label>
                            <input type="radio" id="hdu"  name="bed" value="hdu">
                            <label for="hdu">HDU</label>
                            <input type="radio" id="icu" name="bed" value="icu">
                            <label for="icu">ICU</label>
                            <input type="radio" id="icu-v" name="bed" value="icu-v">

                            <label for="icu-v">ICU-V</label>
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para">Attender Mobile no:</p></td>
                        <td>
                            <input class="reg" type="number" placeholder="Number">
                        </td>
                        

                    </tr>
                    <tr>
                        <td><p class="para">Relationship with the patient:</p></td>
                        <td>
                            <input class="reg" type="text" placeholder="relation">
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para">SRF ID:</p></td>
                        <td>
                            <input class="reg" type="number" placeholder="SRF">
                        </td>
                        
                    </tr>
                    <tr>
                        <td><p class="para">BU no:</p></td>
                        <td>
                            <input class="reg" type="number" placeholder="BU">
                        </td>
                    </tr>
                    <tr>
                        <td><p class="para">Currently(home/ccc/hospital):</p></td>
                        <td><input type="radio" id="home" name="add"value="home">
                        <label for="home">home</label></td>
                        <td><input type="radio" id="ccc" name="add"value="ccc">
                            <label for="ccc">ccc</label>
                         </td>
                         <td><input type="radio" id="hos" name="add"value="hos">
                            <label for="hos">hospital</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input class="reg" id="reg-btn" type="button" value="submit" onclick="send()">
                        </td>
                    </tr>
                </table>
                
            </form>

        </div>
        <script type="text/javascript">
            function send(){
                Email.send({
                SecureToken:"6b2673ff-e43b-4f0a-b572-2f6fc8335a6d ",
                To : document.getElementById('to').value,
                From : "covidbedallotment099@gmail.com",
                Subject : "Form Submission",
                Body : "<html>"+document.getElementById('to').value+"<br>good evening.</html>"
            }).then(
              console.log("email sent sucessfully")
            );
            }
        </script>
      
        
    </body>
</html>	