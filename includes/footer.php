<div class="py-5 bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-white">Novashop</h4>
                <div class="underline mb-2"></div>
                <a href="index.php" class="text-white"> <i class="fa fa-angle-right"></i> Home</a> <br>
                <a href="index.php" class="text-white"> <i class="fa fa-angle-right"></i> About Us</a><br>
                <a href="cart.php" class="text-white"> <i class="fa fa-angle-right"></i> My Cart</a><br>
                <a href="categories.php" class="text-white"> <i class="fa fa-angle-right"></i> Our Collections</a>
            </div>
            <div class="col-md-3">
                <h4 class="text-white">Address</h4>
                <p class="text-white">
                    Yasmine Tower 2nd floor, <br>
                    Centre Urbain Nord, <br>
                    Tunis, Tunisia.
                </p>
                <a href="tel:+21699222111" class="text-white"> <i class="fa fa-phone"></i> +21699222111 </a> <br>
                <a href="mailto:novashop_business@gmail.com" class="text-white"> <i class="fa fa-envelope"></i> novashop_business@gmail.com </a>
            </div>
            <div class="col-md-6">
                <iframe src="https://maps.google.com/maps?q=yasmine%20tower,%20centre%20urbain%20nord&t=&z=13&ie=UTF8&iwloc=&output=embed" class="w-100" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="py-2 bg-danger">
    <div class="text-center">
        <p class="mb-0 text-white">All rights reserved. Copyright @  <a target="_blank" class="text-white">Novashop</a> - <?= date('Y') ?></p>
    </div>
</div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
      
  <!-- ALERTIFY JS -->
  <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

  <script>

      alertify.set('notifier','position', 'top-right');
      <?php 
          if(isset($_SESSION['message'])) 
          { 
              ?>
                alertify.success('<?= $_SESSION['message']; ?>');
              <?php 
              unset($_SESSION['message']);
          } 
      ?>
  </script>


  </body>
</html>