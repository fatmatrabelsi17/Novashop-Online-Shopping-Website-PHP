<?php 
  $page = substr($_SERVER['SCRIPT_NAME'], strrpos($_SERVER['SCRIPT_NAME'],"/")+1);
?>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-dark shadow">
  <div class="container">
    <a class="navbar-brand" href="index.php">Novashop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link <?= $page == "index.php"? 'active':''; ?>" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= $page == "categories.php"? 'active':''; ?>" href="categories.php">Collections</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= $page == "cart.php"? 'active':''; ?>" href="cart.php">Cart</a>
        </li>
        <?php 
          if(isset($_SESSION['auth']))
          {
            ?>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <?= $_SESSION['auth_user']['name']; ?>
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item <?= $page == "my-orders.php"? 'active':''; ?>" href="my-orders.php">My Orders</a></li>
                  <li><a class="dropdown-item" href="logout.php">Logout</a></li>
                </ul>
              </li>
              <?php 
              if($_SESSION['role_as'] == 1)
              {
                
        ?>
              <li class="nav-item">
                <a class="nav-link <?= $page == "admin/index.php"? 'active':''; ?>" href="admin/index.php">Dashboard</a>
              </li>
                 <?php
              }
              ?>

            <?php
          }
          else
          {
            ?>
              <li class="nav-item">
                <a class="nav-link <?= $page == "register.php"? 'active':''; ?>" href="register.php">Register</a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?= $page == "login.php"? 'active':''; ?>" href="login.php">Login</a>
              </li>
            <?php
          }
        ?>
      
      </ul>
    </div>
  </div>
</nav>