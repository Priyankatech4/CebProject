<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
</style>

</head>
<body>

<%
String u1 = request.getParameter("name1");
HttpSession sess=request.getSession();
sess.setAttribute("uname", u1);
String str="select * from skillsetreg where name='"+u1+"'";
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery(str);
rs.next();
%>
<form action="updatehrskill.jsp">


<h1 style="text-align:center;">Employee Details</h1>
<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Employee id</th>
    <th>No. of Batches</th>
    <th>No. of Students</th>
    <th>Current Posting</th>
    <th>Posting Apply</th>
    <th>Course Handled</th>
    <th>Comments</th>
    <th>Status</th>
  </tr>
  <td><%= rs.getString(1) %></td>
  <td><%= rs.getString(2) %></td>
  <td><%= rs.getString(3) %></td>
  <td><%= rs.getString(4) %></td>
  <td><%= rs.getString(5) %></td>
  <td><%= rs.getString(6) %></td>
  <td><%= rs.getString(7) %></td>
  <td><%= rs.getString(8) %></td>
  <td>
  <div class="form-group">
		<select class="form-control" name="status">
		<option>Waiting</option>
		<option>Not Approved</option>
		<option>Approved</option>
		</select>
		</div>
    </td>
    </thead>
    <tbody id="myTable">
    </tbody>
  </table>
 
  
</div>
<div class="form-group">        
      <div class="col">
      <input type="submit"  class="btn btn-primary" style="margin-left:1100px" value="Update"/>
      </div>
    </div>
    </form>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});


<p style="text-align:right;">
 <button type="submit" class="button">Update</button></p>
<jsp:include page="footer.jsp"></jsp:include>
</script>
</body>
</html>