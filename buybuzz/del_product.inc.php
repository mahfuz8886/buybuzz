<?php
	require 'header.php';
?>

<?php
//var_dump($_GET['id']);
$productID=$_GET['id'];
$sql="DELETE FROM products WHERE p_id='$productID'";
$result = mysqli_query($connection, $sql);


echo '<script>alert("Are you sure about delete?")</script>';
echo '<script>window.location="products.php"</script>';
//header("'<script>window.location: products.php?Deleted");

?>

