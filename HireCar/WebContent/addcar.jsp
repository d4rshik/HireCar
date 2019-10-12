<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hirecar";
String userid = "root";
String password = "gpChinmay@19";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/carlist.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/components/icon.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>

    <%
        if (session.getAttribute("uname") == null)
        {
            response.sendRedirect("login.jsp");
        }
    %>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="index.jsp"><i class="car icon"></i>HIRE<span>CAR</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="index.jsp">HOME</a>
          <!-- <a class="nav-item nav-link" href="#">CAR PROVIDERS</a> -->
          <form action="Logout" method="post">
             <button class="btn btn-primary"type="submit">LOGOUT</button>
          </form>
        </div>
      </div>
    </nav>
    
    <div style="margin-top: 150px;padding-left: 200px;padding-right: 200px; position: absolute;" class="container-fluid">
    <h2>Register Car</h2>
    <hr>
   		<form id="RegisterCar" action="RegisterCar" method="post">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Car Name" name="cname">
            </div>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="No of seats" name="seater">
            </div>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Luggage capacity in L" name="lug">
            </div>

            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Category : SUV, HCB, SDN" name="cat">
            </div>

            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Brand" name="brand">
            </div>
            
           <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Fuel type: P or D" name="fuel">
            </div>
            
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Price per day" name="price">
            </div>
            
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Location" name="location">
            </div>
          <center><button class="btn btn-success" type="submit">Register car</button></center>
        </form>  
	</div>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</htmL>