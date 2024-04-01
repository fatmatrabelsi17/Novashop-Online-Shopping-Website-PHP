<?php 

include('functions/userfunctions.php'); 
include('includes/header.php'); 
include('includes/slider.php'); 

?>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Trending Products</h4>
                <div class="underline mb-2"></div>
                <div class="d-flex align-center justify-center row">
                    <?php 
                        $trendingProducts = getAllTrending();
                        if(mysqli_num_rows($trendingProducts) > 0)
                        {
                            foreach ($trendingProducts as $item) {
                                ?>
                                    <div class="item col">
                                        <a href="product-view.php?product=<?= $item['slug']; ?>">
                                            <div class="card shadow">
                                                <div class="card-body">
                                                    <img width=500 height=500 src="uploads/<?= $item['image']; ?>" alt="Product Image" >
                                                    <h6 class="text-center"><?= $item['name']; ?></h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                <?php
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="py-5 bg-f2f2f2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>About Us</h4>
                <div class="underline mb-2"></div>
                <p>
                Driven by innovation and guided by integrity, Novashop is more than just a marketplace—it's a destination where inspiration meets accessibility. Join us on this journey as we redefine the art of online shopping, one exceptional experience at a time.
                </p>
                <p>
                Our commitment to quality is unwavering. We meticulously curate our selection, ensuring that each item meets our stringent standards for excellence.                     <br>
                From renowned brands to emerging designers, we showcase products that combine style, functionality, and value.
                </p>

            </div>
        </div>
    </div>
</div>



<?php include('includes/footer.php'); ?>
<script>
const it= <?php echo count($trendingProducts); ?>
$(document).ready(function () {
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:0
            },
            600:{
                items:it
            },
            1000:{
                items:it
            }
        }
    })

});
</script>