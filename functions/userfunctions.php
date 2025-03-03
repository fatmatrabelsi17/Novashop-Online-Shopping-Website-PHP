<?php 

session_start();
include('config/dbcon.php');


function getAllActive($table)
{
    global $con;
    $query = "SELECT * FROM $table WHERE status='0' ";
    return $query_run = mysqli_query($con, $query);
}


function getAllTrending()
{
    global $con;
    $query = "SELECT * FROM products WHERE trending='1' AND status='0' ";
    return $query_run = mysqli_query($con, $query);
}


function getSlugActive($table, $slug)
{
    global $con;
    $query = "SELECT * FROM $table WHERE slug='$slug' AND status='0' LIMIT 1";
    return $query_run = mysqli_query($con, $query);
}

function getProdByCategory($category_id)
{
    global $con;
    $query = "SELECT * FROM products WHERE category_id='$category_id' AND status='0' ";
    return $query_run = mysqli_query($con, $query);
}

function getIDActive($table, $id)
{
    global $con;
    $query = "SELECT * FROM $table WHERE id='$id' AND status='0' ";
    return $query_run = mysqli_query($con, $query);
}

function getCartItems()
{
    global $con;
    if(isset($_SESSION['auth_user'])){
    $userId = $_SESSION['auth_user']['user_id'];
    $query = "SELECT c.id as cid, c.prod_id, c.prod_qty, p.id as pid, p.name, p.image, p.selling_price 
                FROM carts c, products p WHERE c.prod_id=p.id AND c.user_id='$userId' ORDER BY c.id DESC ";
    return $query_run = mysqli_query($con, $query);
    if ($query_run) {
        // Vérifie si des éléments de panier ont été trouvés
        if (mysqli_num_rows($query_run) > 0) {
            // Retourne les éléments de panier sous forme de tableau
            return mysqli_fetch_all($query_run, MYSQLI_ASSOC);
        } else {
            // Retourne un tableau vide si aucun élément de panier n'est trouvé
            return [];
        }
    } else {
        // Gérer le cas où la requête échoue
        return [];
    }
} else {
    // Gérer le cas où 'auth_user' n'est pas défini
    // Par exemple, rediriger vers une page de connexion
    return [];
}
}

function getOrders()
{
    global $con;
    $userId = $_SESSION['auth_user']['user_id'];

    $query = "SELECT * FROM orders WHERE user_id='$userId' ORDER BY id DESC";
    return $query_run = mysqli_query($con, $query);
}

function redirect($url, $message)
{
    $_SESSION['message'] = $message;
    header('Location: '.$url);
    exit(0);
}

function checkTrackingNoValid($trackingNo)
{
    global $con;
    $userId = $_SESSION['auth_user']['user_id'];

    $query = "SELECT * FROM orders WHERE tracking_no='$trackingNo' AND user_id='$userId' ";
    return mysqli_query($con, $query);
}

?>
