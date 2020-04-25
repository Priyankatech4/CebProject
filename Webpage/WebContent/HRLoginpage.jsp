<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style type="text/css">
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
</style>
</head>
<body>
<div class="container-fluid">
  <h2></h2>
  <form action="HRLoginAction.jsp">
    <div class="form-group">
      <label for="username">User name:</label>
      <input type="name" class="form-control" id="user" placeholder="Enter user name" name="user">
    </div>
     
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pass" placeholder="Enter password" name="pass">
    </div>
    
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
   <button type="submit" class="button" >Submit</button>
 <span style="float:right;">
  <button type="login" class="button button2" >Reset</button>
  </span>    
  </form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
