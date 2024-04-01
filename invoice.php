<?php
require('fpdf/fpdf.php');
include('functions/userfunctions.php');



if(isset($_GET['t']))
{
    $tracking_no = $_GET['t'];

    $orderData = checkTrackingNoValid($tracking_no);
$data = mysqli_fetch_array($orderData);


    class PDF extends FPDF
{
    // Header
    function Header()
    {
       
        // Arial bold 15
        $this->SetFont('Arial','B',15);
        // Move to the right
        $this->Cell(80);
        // Title
        $this->Cell(30,10,'Novashop Invoice',0,0,'C');
        // Line break
        $this->Ln(20);
    }

    // Footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

$userId = $_SESSION['auth_user']['user_id'];

$order_query = "SELECT o.id as oid, o.tracking_no, o.user_id, oi.*, oi.qty as orderqty, p.* FROM orders o, order_items oi, 
    products p WHERE o.user_id='$userId' AND oi.order_id=o.id AND p.id=oi.prod_id 
    AND o.tracking_no='$tracking_no' ";
$order_query_run = mysqli_query($con, $order_query);  

// Create a new PDF instance
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

// Customer Information
$pdf->SetFont('Arial','B',12);
$pdf->Cell(0,10,'Customer Information',0,1);
$pdf->SetFont('Arial','',10);
$pdf->Cell(0,10,'Customer Name: ' . $_SESSION['auth_user']['name'],0,1);
$pdf->Cell(0,10,'Address: ' . $data['address'],0,1);
$pdf->Cell(0,10,'Email: ' . $data['email'],0,1);
$pdf->Cell(0,10,'Payment Mode: ' . $data['payment_mode'],0,1);
$pdf->Ln(10);

// Invoice Details
$pdf->SetFont('Arial','B',12);
$pdf->Cell(60,10,'Description',1,0,'C');
$pdf->Cell(30,10,'Quantity',1,0,'C');
$pdf->Cell(40,10,'Unit Price',1,0,'C');
$pdf->Cell(40,10,'Total',1,1,'C');

$pdf->SetFont('Arial','',10);

foreach ($order_query_run as $item) {

       $pdf->Cell(60,10,$item['name'],1,0);
$pdf->Cell(30,10,$item['orderqty'],1,0,'C');
$pdf->Cell(40,10, $item['price'].'TND',1,0,'C');
$pdf->Cell(40,10,$item['orderqty']*$item['price'] .'TND' ,1,1,'C');
    
}


// Total
$pdf->SetFont('Arial','B',12);
$pdf->Cell(130,10,'Total',1,0,'R');
$pdf->Cell(40,10,$data['total_price'].'TND',1,1,'C');

// Output PDF
$pdf->Output();
    if(mysqli_num_rows($orderData) < 0)
    {
        ?>
            <h4>Something went wrong</h4>
        <?php
        die();
    }
}
else{
    ?>
        <h4>Something went wrong</h4>
    <?php
    die();
}



$data = mysqli_fetch_array($orderData);





?>