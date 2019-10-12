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
    <link rel="stylesheet" href="assets/css/book.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/components/icon.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="index.jsp"><i class="car icon"></i>HIRE<span>CAR</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <form action="Logout" method="post">
             <button class="btn btn-success"type="submit">LOGOUT</button>
          </form>
        </div>
      </div>
    </nav>
    <!-- Navigation bar -->

    <!-- Car list wrapper -->
    <div id="wrapper" class="container-fluid">
        <div class="row">

            <!-- Cars gridview -->
            <div id="gridview" class="col-12 col-md-">

                <!-- Car detail cards -->
                
                    
                    <%
                    String cid = request.getParameterValues("cid")[0];
            		System.out.println(cid);
            		String pdate = session.getAttribute("pickd").toString();
            		String rdate = session.getAttribute("returnd").toString();
            		String csid = session.getAttribute("uname").toString();
            		
            		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                    statement=connection.createStatement();
                    String sql ="select * from car where cid="+cid;
                    System.out.println(sql);
                    resultSet = statement.executeQuery(sql);
                    SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
                    
                    if (resultSet.next()) {
                    	Date dateBefore = myFormat.parse(pdate);
             	       	Date dateAfter = myFormat.parse(rdate);
                 	       long difference = dateAfter.getTime() - dateBefore.getTime();
                 	       float daysBetween = (difference / (1000*60*60*24));
                 	       float price = daysBetween * Float.valueOf(resultSet.getString("price"));
                 	      System.out.println("Number of Days between dates: "+daysBetween);
                    %>
                    <div class="row">
                    <div class="card-deck">
                        <div class="card shadow-sm">
                            <div class="container-fluid">
                                <img src="assets/images/cars/<%=resultSet.getString("image") %>.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b><%=resultSet.getString("cname") %></b>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i><%=resultSet.getString("seater") %></div>
                                <div class="col-3"><i class="suitcase icon"></i><%=resultSet.getString("lug") %></div>
                                <div class="col-3"><i class="fire icon"></i><%=resultSet.getString("fueltype") %></div>
                                <div class="col-3"><b><%=resultSet.getString("cat") %></b></div>
                            </div>
                            <br>
                            <div class="card-footer">
                                <h5><b>Price Summary</b></h5>
                                <br>
                                <p>Pick-up date: <%=pdate %></p>
                                <p>Return date: <%=rdate %></p>
                                <p>Price per day: <span style="color:black"><i class="rupee icon"></i><%=resultSet.getString("price") %></span></p>
                                <p><b>Total Amount:</b><span style="color:black"><b><i class="rupee icon"></i><%=Float.toString(price) %></b></span></p>
                                <br>
                                <form action="Booking" method = "post">
                                	<input type="hidden" value="<%= resultSet.getString("cid") %>" name="cid">
                                	<button class="btn btn-primary" type="submit">BOOK NOW</button>
                                </form>
                            </div>
                        </div>
                        </div>
                </div>
                        <%}
                    %>
                    
                <br>
                <!-- Car detail cards -->

            </div>
            <!-- Cars gridview -->
        </div>
    </div>
    <!-- Car list wrapper -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</htmL>