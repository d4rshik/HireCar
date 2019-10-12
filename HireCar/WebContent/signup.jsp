<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/signup.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/components/icon.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="#"><i class="car icon"></i>HIRE<span>CAR</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="home">HOME</a>
          <a class="nav-item nav-link active" style="color:limegreen;">SIGNUP</a>
          <a class="nav-item nav-link" href="login.jsp">LOGIN</a>
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

    <!-- Login page content -->
    <div id="highlight" class="container-fluid">
      <center><h2>SIGN UP</h2></center>
      <div id="login" class="container-fluid">
        <form id="form" action="RegisterUser" method="post">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Username" name="uname">
            </div>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Name" name="fname">
            </div>
            <div class="input-group mb-3">
              <input type="password" class="form-control" id="psw" placeholder="Password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            </div>

            <div id="message" class="input-group mb-3">
                <h6 style="color:white">Password must contain the following:</h6>
                <p>A <b>lowercase</b> letter, <b>uppercase</b> letter, <b>a number</b> and minimum <b>8 characters</b></p>
            </div>

            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="E-mail" name="email">
            </div>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Mob No." name="mobile">
            </div>
            <center><p><a href="login.jsp">Already have an account</a></p></center>
          <center><button class="btn btn-success" type="submit">SIGN UP</button></center>
        </form>   
      </div>
    </div>
    <!-- Login page content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
        document.getElementById("message").style.display = "none";
        myInput = document.getElementById('psw');
        var letter = document.getElementById("letter");
        var capital = document.getElementById("capital");
        var number = document.getElementById("number");
        var length = document.getElementById("length");

        myInput.onfocus = function() {
            document.getElementById("message").style.display = "block";
          };
        myInput.onblur = function() {
            document.getElementById("message").style.display = "none";
          };
    </script>
</body>
</htmL>