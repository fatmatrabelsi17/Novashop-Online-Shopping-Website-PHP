<?php 

include('functions/userfunctions.php');
include('includes/header.php'); 
include('authenticate.php'); 

$cartItems = getCartItems();

if(mysqli_num_rows($cartItems) == 0)
{
    header('Location: index.php');
}

?>


<div class="py-3 bg-danger">
    <div class="container">
        <h6 class="text-white">
            <a href="index.php" class="text-white">
                Home / 
            </a> 
            <a href="checkout.php" class="text-white">
                Checkout
            </a>
        </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="card">
            <div class="card-body shadow">
                <form action="functions/placeorder.php" method="POST">
                    <div class="row">
                        <div class="col-md-7">
                            <h5>Billing Details</h5>
                            <hr>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold ">Name</label>
                                    <input type="text" name="name" id="name" required placeholder="Enter your full name" class="form-control">
                                    <small class="text-danger name"></small>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold ">E-mail</label>
                                    <input type="email" name="email" id="email" required placeholder="Enter your email" class="form-control">
                                    <small class="text-danger email"></small>

                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold ">Phone</label>
                                    <input type="text" name="phone" id="phone" required placeholder="Enter your phone number" class="form-control">
                                    <small class="text-danger phone"></small>

                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold ">Zip Code</label>
                                    <input type="text" name="pincode" id="pincode" required placeholder="Enter your zip code" class="form-control">
                                    <small class="text-danger pincode"></small>

                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="fw-bold ">Address</label>
                                    <textarea name="address" id="address" required class="form-control" rows="5"></textarea>
                                    <small class="text-danger address"></small>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <h5>Order Details</h5>
                            <hr>
                                <?php $items = getCartItems();
                                $totalPrice = 0;
                                foreach ($items as $citem) 
                                {
                                    ?>
                                    <div class="mb-1 border">
                                        <div class="row align-items-center">
                                            <div class="col-md-2">
                                                <img src="uploads/<?= $citem['image'] ?>" alt="Image" width="60px">
                                            </div>
                                            <div class="col-md-5">
                                                <label><?= $citem['name'] ?></label>
                                            </div>
                                            <div class="col-md-3">
                                                <label><?= $citem['selling_price'] ?> TND</label>
                                            </div>
                                            <div class="col-md-2">
                                                <label>x <?= $citem['prod_qty'] ?></label>
                                            </div>
                                        </div>
                                    </div>

                                    <?php
                                    $totalPrice += $citem['selling_price'] * $citem['prod_qty'];
                                }
                                ?>
                                <hr>
                            <h5>Total Price : <span class="float-end fw-bold"> <?= $totalPrice ?> TND</span> </h5>
                            <div class="">
                                <input type="hidden" name="payment_mode" value="COD">
                                <button type="submit" name="placeOrderBtn" class="btn btn-success w-100">Confirm and place order | COD</button>
                                <div id="paypal-button-container" class="mt-3"></div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<?php include('includes/footer.php'); ?>

