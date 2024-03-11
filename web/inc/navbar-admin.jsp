
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <title>Document</title>
    <!-- Custom-Files -->
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    <!-- Main css -->
    <link rel="stylesheet" href="../css/fontawesome-all.css">
    <!-- Font-Awesome-Icons-CSS -->
    <link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- pop-up-box -->
    <link href="../css/menu.css" rel="stylesheet" type="text/css" media="all" />
    <!-- menu style -->
    <!-- //Custom-Files -->
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
        >
        <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Navbar brand -->
        <form action="" method="POST"></form>
        <a class="navbar-brand mt-2 mt-lg-0" href="#">    
        </a>
        <!-- Left links -->
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
            <a class="nav-link" href="#">Dashboard</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="CategoryControll.php">Catogery</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="ProductControll.php">Product</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="OrderControll.php">Order</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Customer</a>
            </li>
        </ul>
        <!-- Left links -->
        </div>
        <div class="d-flex align-items-center">
        <a class="text-reset me-3" href="#" style="padding-right:10px">
            <i class="fa fa-user"></i>
        </a>
             
            <a href="./views/logout.jsp" style="padding-left:10px"> Logout</a>
        </div>
        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->
</body>


</html>