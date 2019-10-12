<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/index.css">
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
      <a class="navbar-brand" href=""><i class="car icon"></i>HIRE<span>CAR</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
        
        <a class="nav-item nav-link" href="bookings.jsp">BOOKINGS</a>
    
          <form action="Logout" method="post">
             <button class="btn btn-success"type="submit">LOGOUT</button>
          </form>
        </div>
      </div>
    </nav>
    <!-- Navigation bar -->

    <!-- Background carousel -->
    <div id="carouselExampleControls" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="assets/images/3.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="assets/images/1.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
    </div>
    <!-- Background carousel -->

    <!-- Landing page content -->
    <div id="highlight" class="container-fluid">
      <center><h1>BOOK A CAR TODAY!</h1></center>
      <center><p>Find the best rental prices on luxury, economy, and family rental cars<br>in over 100 locations, book online today!</p></center>
      
      <!-- Location date field -->
      <div id="bookform" class="container-fluid">
        <form method="get" action="ListCar">
          <div class="input-group input-group-sm mb-3">
            <select class="custom-select" id="inputGroupSelect01" name="location" >
              <option selected>PICK LOCATION</option>
              <option value="Cochin">Cochin</option>
              <option value="Chennai">Chennai</option>
              <option value="Bangalore">Bangalore</option>
            </select>
            <input class="custom-select" type="text" onfocus="(this.type='date')" name="pickd" placeholder="PICK UP DATE" id="inputGroupSelect01" title="Must give pick up date" required>
            <input class="custom-select" type="text" onfocus="(this.type='date')" name="returnd" placeholder="RETURN DATE" id="inputGroupSelect01" title="Must give return date" required>
          </div>
          <center><button class="btn btn-success" type="submit">FIND CARS</button></center>
        </form>   
      </div>
      <!-- Location date field -->
    </div>
    <!-- Landing page content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</htmL>