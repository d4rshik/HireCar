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

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="index.jsp"><i class="car icon"></i>HIRE<span>CAR</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="index.jsp">HOME</a>
          <a class="nav-item nav-link" href="#">CAR PROVIDERS</a>
          <a class="nav-item nav-link" href="#">SIGNUP</a>
          <a class="nav-item nav-link" href="login.jsp">LOGIN</a>
        </div>
      </div>
    </nav>
    <!-- Navigation bar -->

    <!-- Car list wrapper -->
    <div id="wrapper" class="container-fluid">
        <div class="row">

            <!-- Filters sidebar -->
            <div id="sidebar" class="col-3 col-md-3">
                <h5><b>Filters</b></h5>
                <hr>
                <form action="">
                    <h6>CATEGORIES</h6>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox1">
                        <label class="custom-control-label" for="checkbox1">XL</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox2">
                        <label class="custom-control-label" for="checkbox2">XXL</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox3">
                        <label class="custom-control-label" for="checkbox3">Sedan</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox4">
                        <label class="custom-control-label" for="checkbox4">XUV</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox5">
                        <label class="custom-control-label" for="checkbox5">Land Cruiser</label>
                    </div>
                    <hr>
                    <h6>BRANDS</h6>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox6">
                        <label class="custom-control-label" for="checkbox6">Audi <small>(3)</small></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox7">
                        <label class="custom-control-label" for="checkbox7">BMW <small>(13)</small></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox8">
                        <label class="custom-control-label" for="checkbox8">TATA <small>(5)</small></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox9">
                        <label class="custom-control-label" for="checkbox9">Ford <small>(5)</small></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox10">
                        <label class="custom-control-label" for="checkbox10">Mercedes <small>(16)</small></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox11">
                        <label class="custom-control-label" for="checkbox11">Ferrari <small>(1)</small></label>
                    </div>
                    <hr>
                    <h6>FUEL TYPE</h6>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox12">
                        <label class="custom-control-label" for="checkbox12">Diesel</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="checkbox13">
                        <label class="custom-control-label" for="checkbox13">Petrol</label>
                    </div>
                    <hr>
                    <h6>PRICE RANGE</h6>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad1">
                        <label class="custom-control-label" for="rad1"><i class="rupee icon"></i>0-2000</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad2">
                        <label class="custom-control-label" for="rad2"><i class="rupee icon"></i>2001-5000</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad3">
                        <label class="custom-control-label" for="rad3"><i class="rupee icon"></i>5001-10000</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad4">
                        <label class="custom-control-label" for="rad4"><i class="rupee icon"></i>10001-15000</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad5">
                        <label class="custom-control-label" for="rad5"><i class="rupee icon"></i>15001-25000</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" class="custom-control-input" name="radoption" id="rad6">
                        <label class="custom-control-label" for="rad6"><i class="rupee icon"></i>25000 above</label>
                    </div>
                    <hr>
                    <button class="btn btn-primary" type="submit">APPLY FILTERS</button>
                </form> 
            </div>
            <!-- Filters sidebar -->

            <!-- Cars gridview -->
            <div id="gridview" class="col-9 col-md-9">

                <!-- location and date input field -->
                <div class="row">
                    <div id="bookform" class="container-fluid">
                        <form action="">
                            <div class="input-group input-group-sm mb-3">
                            <select class="custom-select" id="inputGroupSelect01">
                                <option selected>PICK LOCATION</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <select class="custom-select" id="inputGroupSelect01">
                                <option selected>PICK UP DATE</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <select class="custom-select" id="inputGroupSelect01">
                                <option selected>RETURN DATE</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <button class="btn btn-primary">SEARCH</button>
                            </div>
                        </form>  
                    </div>
                </div>
                <!-- location and date input field -->
                <hr>
                
                <!-- Car detail cards -->
                <div class="row">
                    <div class="card-deck">
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017_Ford-Fiesta.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Ford Figo</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>A</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <div class="container-fluid">
                                <img src="assets/images/cars/Toyota-Prius-C.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Toyota Prius</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017-Mitsubishi-Mirage-orange.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Mitsubishi</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="card-deck">
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017_Ford-Fiesta.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Ford Figo</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>A</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <div class="container-fluid">
                                <img src="assets/images/cars/Toyota-Prius-C.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Toyota Prius</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017-Mitsubishi-Mirage-orange.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Mitsubishi</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="card-deck">
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017_Ford-Fiesta.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Ford Figo</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>A</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <div class="container-fluid">
                                <img src="assets/images/cars/Toyota-Prius-C.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Toyota Prius</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                        <div class="card shadow-sm">
                            <span id="premium" class="badge badge-secondary">Premium</span>
                            <div class="container-fluid">
                                <img src="assets/images/cars/2017-Mitsubishi-Mirage-orange.jpg" class="card-img-top" alt="...">
                            </div>
                            <div id="head" class="card-body">
                                <h5 class="card-text">
                                    <b>Mitsubishi</b>
                                    <span>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                        <i class="star icon"></i>
                                    </span>
                                </h5>
                            </div>
                            <div class="row">
                                <div class="col-3"><i class="user icon"></i>5</div>
                                <div class="col-3"><i class="suitcase icon"></i>2</div>
                                <div class="col-3"><i class="map pin icon"></i>M</div>
                                <div class="col-3"><i class="snowflake icon"></i>Y</div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            </div>
                        </div>
                    </div>
                </div>
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