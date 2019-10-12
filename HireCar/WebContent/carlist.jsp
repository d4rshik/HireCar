<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    <!-- Navigation bar -->

    <!-- Car list wrapper -->
    <div id="wrapper" class="container-fluid">
        <div class="row">
        
       

            <!-- Filters sidebar -->
            <div id="sidebar" class="col-2 col-md-2">
                <h5><b>Filters</b></h5>
                <hr>
                <form action="carlist.jsp" method="post">
                    <h6>CATEGORIES</h6>
                    <% try{
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select distinct(cat) as ct from car";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next())
                        {
                        
                        %>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="<%=resultSet.getString("ct") %>" name="cat" value="<%=resultSet.getString("ct") %>">
                        <label class="custom-control-label" for="<%=resultSet.getString("ct") %>"><%=resultSet.getString("ct") %></label>
                    </div>
                    <% }
                        connection.close();
                        } 
                        catch (Exception e) {
                        e.printStackTrace();
                        } %>
                    <hr>
                    <h6>BRANDS</h6>
                     <%
                     try{
                    	
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select brand, count(brand) as cnt from car group by brand;";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next())
              
                        {;
                        %>
                    
                    <div class="custom-control custom-checkbox ">
                        <input type="checkbox" class="custom-control-input" id="<%=resultSet.getString("brand") %>" name="brand" value="<%=resultSet.getString("brand") %>">
                        <label class="custom-control-label" for="<%=resultSet.getString("brand") %>"><%=resultSet.getString("brand") %> <small>(<%=resultSet.getString("cnt") %>)</small></label>
                    </div>
                    <% }
                        connection.close();
                        } 
                        catch (Exception e) {
                        e.printStackTrace();
                        } %>
                    <hr>
                    <h6>FUEL TYPE</h6>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name = "fuel" id="Diesel" value="D">
                        <label class="custom-control-label" for="Diesel">Diesel</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="fuel" id="Petrol" value="P">
                        <label class="custom-control-label" for="Petrol">Petrol</label>
                    </div>
                    <hr>
                    <button class="btn btn-primary" type="submit">APPLY FILTERS</button>
                </form> 
            </div>
            <!-- Filters sidebar -->

            <!-- Cars gridview -->
            <div id="gridview" class="col-10 col-md-10">

                <!-- Car detail cards -->
                <%@ page import="java.util.*" %>
                    <%	try{
                    	
                    	
 
	                    String brand[] = request.getParameterValues("brand");
                        String cat[] = request.getParameterValues("cat");
                        String fuel[] = request.getParameterValues("fuel");
                        
                        		String bfilter = "";
                        		String cfilter = "";
                        		String ffilter = "";
                        		String ct = "";
                        		String bd = "";
                        		String fl = "";
                        		
                        		String sql = "select * from car  where location ='" + session.getAttribute("location")+"' and status=1 ";
                        		System.out.println(sql);
                        		
                        		
                        		if (brand != null) {
	            					int n = brand.length;  
	            					for (int i = 0; i< n-1; i++) {
	            						bfilter = bfilter + "'" +brand[i] + "'" + ","; }
	            					bfilter = bfilter + "'" + brand[n-1] + "'" ;}
                        		
                        		if (cat != null) {
	            					int n = cat.length;  
	            					for (int i = 0; i< n-1; i++) {
	            						cfilter = cfilter + "'" +cat[i] + "'" + ","; }
	            					cfilter = cfilter + "'" + cat[n-1] + "'" ; }
                        		
                        		if (fuel != null) {
	            					int n = fuel.length;  
	            					for (int i = 0; i< n-1; i++) {
	            						ffilter = ffilter + "'" +fuel[i] + "'" + ","; }
	            					ffilter = ffilter + "'" + fuel[n-1] + "'" ; }

                        if (cfilter == "") {ct = " not in ('')";} else {ct = " in ("+ cfilter +")";}
                        if (bfilter == "") {bd = " not in ('')";} else {bd = " in ("+ bfilter +")";}
                        if (ffilter == "") {fl = " not in ('')";} else {fl = " in ("+ ffilter +")";}
                       	
                        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        if(bfilter !="" || cfilter != "" || ffilter != "") {
                        	sql = "select * from car where brand" + bd + " and cat" + ct + " and fueltype"+ fl   + " and location ='" +session.getAttribute("location")+"' and status=1"  ;
                        	System.out.println(sql);
                        }
                   
                        resultSet = statement.executeQuery(sql);

                        int i = 0;
                        while(resultSet.next())
                        {
                        	
                    if (i%3 == 0) {
                    	%>
                    <div class="row">
                    <div class="card-deck">
                    
                    <% } %>
                    
                        <div class="card shadow-sm" onclick="document.getElementById('bookform<%= resultSet.getString("cid") %>').submit()">
                        
                            <div class="container-fluid">
                                <img src="assets/images/cars/<%= resultSet.getString("image") %>.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b><%=resultSet.getString("cname") %></b>
                                    <span style="color:black"><b><i class="rupee icon"></i><%=resultSet.getString("price") %>/Day</b></span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i><%=resultSet.getString("seater") %></div>
                                <div class="col-3"><i class="suitcase icon"></i><%=resultSet.getString("lug") %></div>
                                <div class="col-3"><i class="fire icon"></i><%=resultSet.getString("fueltype") %></div>
                                <div class="col-3"><b><%=resultSet.getString("cat") %></b></div>
                            </div>
                            <br>
                            <form id="bookform<%= resultSet.getString("cid") %>" action="book.jsp" method="post">
                            	<input type="hidden" value="<%= resultSet.getString("cid") %>" name="cid">
                            </form>
                        </div>
                       
                        <% i = i+1;
                        if (i%3 == 0) { %>
                    </div>
                    </div>
                    <br>
                    <% } 
                         }
                        if (i == 0) {
                        	%>
                     <h2>No cars available</h2>
                        	</div>
                        	</div>
                            <br> <%
                        }
                        if (i%3 != 0) {
                        	%>
                        	</div>
                    </div>
                    <br>
                    <%
                        }
                        connection.close();
                        } 
                        catch (Exception e) {
                        e.printStackTrace();
                        }
                    
                   
                        %>
                       
                    
                    
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