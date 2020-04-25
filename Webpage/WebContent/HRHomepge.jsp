<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<form action="HRLoginAction.jsp">
<div class="container">
  <div class="row">
   <div class="col-sm-2">
    </div>
     <div class="col-sm-2">
    <button type="login" class="button" formaction="http://localhost:9093/Webpage1/EmployeeDetails.jsp">Employee Details</button>
    </div>
     <div class="col-sm-2">
    </div>
    <div class="col-sm-2">
    </div>
    <div class="col-sm-2">
    <button type="login" class="button button2" formaction="http://localhost:9093/Webpage1/SkillSetRegister.jsp">Skill Approval</button>
    </div>
     <div class="col-sm-2">
    </div>
   
    
  </div>
</div>
</form>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>



