<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT>
function show()
{
  var name = document.getElementById("name").value; 
  var password = document.getElementById("pwd").value;  
  var email= document.getElementById("email").value;
  var gender = document.getElementById("gender").value; 
  var dob=document.getElementById("dob").value;
  var phno=document.getElementById("phno").value;
  confirm("You have entered:" + "\n Name : " + fname + " " + lname + "\n Age : " + age + "\n Address : "+ address + "\n Gender : "+ gender + "\n\n Do you want to confirm these details ?");
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
  
<style> 
Sample {                                         
    margin-left: 70px; 
    font-weight: bold ; 
    float: left; 
    clear: left; 
    width: 100px; 
    text-align: left; 
    margin-right: 10px; 
    font-family:sans-serif,bold, Arial, Helvetica; 
    font-size:14px; 
} 
   
div {  
    box-sizing: border-box; 
    width: 100%; 
    border: 100px solid black; 
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
.button2 {background-color: BLue;}
</style></head> 
   
<body> 
<h1 style="text-align: left"> Update the application form</h1>           
        <%
           HttpSession sess=request.getSession(true);
          
           String h1=(String)sess.getAttribute("e1");
           
           String str="select name,pass,email,phone from userreg where name='"+h1+"'";
           
           Class.forName("org.h2.Driver");
           Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
           Statement stm=con.createStatement();
           
           ResultSet rs=stm.executeQuery(str);
           
           rs.next();
        %>
          <form class="form-horizontal" action="updateaction.jsp">
          <div class="container">
            <div class="form-group">
              <label class="control-label col-sm-4" for="email">
                Enter your Name
              </label>
                <div class="col-sm-6">
                  <input type="text"  name="uname" value="<%=rs.getString(1)%>" class="form-control" id="name" placeholder="Enter the name" name="name" onblur="changeColor(this)">  
                  <span name="blank" id="nametag" style="display:none; color: red"> <strong>!</strong> This field is empty</span>
                </div>
              </div>
            <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Enter the Password</label>
      <div class="col-sm-6">          
        <input type="password" name="pass" value="<%=rs.getString(2)%>"class="form-control" id="pwd" placeholder="Enter the password" name="pwd" onblur="changeColor(this)">
        <span name="blank" id="pwdtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Enter the Email Address</label>
      <div class="col-sm-6">          
        <input type="text" name="email" value="<%=rs.getString(3)%>" class="form-control" id="email" placeholder="Enter the Email Address" name="email" onblur="changeColor(this)">
        <span name="blank" id="emailtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>     
          <label class="control-label col-sm-4" for="pwd">Enter the phone number</label>
      <div class="col-sm-6">          
        <input type="text" name="phone" value="<%=rs.getString(4)%>" class="form-control" id="phno" placeholder="Enter the phone number" name="phno" onblur="changeColor(this)">
        <span name="blank" id="phnotag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
    </div>
    </div>
    
    
       
 <button type="login" class="button" >Submit</button>
 <span style="float:right;">
  <button type="login" class="button button2" formaction="">Reset</button>
  </span>    
</form> 
</body> 
 </html>