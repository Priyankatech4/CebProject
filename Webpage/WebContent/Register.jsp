<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js">
    </script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js">
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>register</title>
    <SCRIPT>
      function show()
      {
        var name = document.getElementById("name").value; 
        var password = document.getElementById("pwd").value;  
        var email= document.getElementById("email").value;
        var gender = document.getElementById("gender").value; 
        var dob=document.getElementById("dob").value;
        var phno=document.getElementById("phno").value;
        confirm("You have entered:" + "\n name : " + name + " "  + "\n password : " + pwd + "\n email : "+ email + "\n Gender : "+ gender + "\n\n Do you want to confirm these details ?");
      }
      function changeColor(val)
      { 
        if((val.value=="")||(val.value==null))
        {
          val.style.border = "1px solid red";
          displayText(val.id);
        }
        else
        {
          val.style.border = "1px solid black"
          hideText(val.id);
        }
      }
      function displayText(val)
      {
        if(val == "name")
        {
          document.getElementById('nametag').style.display = 'block';
        }
        else if(val == "pwd")
        {
          document.getElementById('pwdtag').style.display = 'block';
        }
        else if(val == "email")
        {
          document.getElementById('emailtag').style.display = "block";
        }
        else if(val == "dob")
        {
          document.getElementById('dobtag').style.display = "block";
        }
        else if(val == "phno")
        {
          document.getElementById('phnotag').style.display = "block";
        }
      }
      function hideText(val) {
        if(val == "name")
        {
          document.getElementById('nametag').style.display = 'none';
        }
        else if(val == "pwd")
        {
          document.getElementById('pwdtag').style.display = 'none';
        }
        else if(val == "email")
        {
          document.getElementById('emailtag').style.display = "none";
        }
        else if(val == "dob")
        {
          document.getElementById('dobtag').style.display = "none";
        }
        else if(val == "phno")
        {
          document.getElementById('phnotag').style.display = "none";
        }
      }
          </SCRIPT>
      
    <style type="text/css">
       
div {  
    
    width: 100%;  
    float: left; 
    align-content: center; 
    align-items: left; 
} 
   
      form {                                         
    	    margin: 0 auto; 
    	    width: 600px; 
    	}
    	.button {
    	  background-color: Blue;
    	  border: none;
    	  color: white;
    	  padding: 5px 5px;
    	  text-align: center;
    	  text-decoration: none;
    	  display: inline-block;
    	  font-size: 16px;
    	  margin: 4px 2px;
    	  cursor: pointer;
    	}
    	</style>
    	</head>
    	
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <form  action="userregaction.jsp">
      <div class="container-fluid">
        <h3>
          Fill the application form
        </h3>
          
            <div class="form-group">
              <label class="control-label col-sm-5" for="email">
                Enter your Name
              </label>
                <div class="col-sm-7">
                  <input type="name" class="form-control" id="name" placeholder="Enter the name" name="name" onblur="changeColor(this)">  
                  <span name="blank" id="nametag" style="display:none; color: red"> <strong>!</strong> This field is empty</span>
                </div>
              </div>
            <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Enter the Password</label>
      <div class="col-sm-7">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter the password" name="pwd" onblur="changeColor(this)">
        <span name="blank" id="pwdtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="pwd">Enter the Email Address</label>
      <div class="col-sm-7">          
        <input type="email" class="form-control" id="email" placeholder="Enter the Email Address" name="email" onblur="changeColor(this)">
        <span name="blank" id="emailtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5">Enter the Gender</label>
      <div class="col-sm-7">
    <label class="radio-inline">
      <input type="radio" name="optradio" checked value="male">Male
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value="female">Female
    </label>          
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-5" for="dob">Enter the Date Of Birth</label>
      <div class="col-sm-7">               
        <input type="date" class="form-control" id="dob" placeholder="Enter the Date Of Birth" name="dob" onblur="changeColor(this)">
        <span name="blank" id="dobtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
    
      <label class="control-label col-sm-5" for="pwd">Enter the phone number</label>
      <div class="col-sm-7">          
        <input type="phno" class="form-control" id="phno" placeholder="Enter the phone number" name="phno" onblur="changeColor(this)">
        <span name="blank" id="phnotag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
      </div>
    </div>
    
    
       <button type="login" class="button" >Submit</button>
     
  
     
    </form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>