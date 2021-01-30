<?php
	require 'header.php';
	//var_dump($_POST['checkout']);

	if (isset($_POST['checkout'])) {
		//var_dump($_POST['checkout']);
		//var_dump($_SESSION);
		$tot_amount=$_POST['checkout'];
		$profile_id=$_SESSION['userUid'];

		//echo $tot_amount;
		//echo $profile_id;
		$sql="INSERT INTO cart(users_name,total_amount) VALUES(?,?)";
			$stmt= mysqli_stmt_init($connection);

		if(!mysqli_stmt_prepare($stmt, $sql)){
				header("location: cart.php?error=sqlerror");
				 exit();
		}
		else{
				mysqli_stmt_bind_param($stmt,"ss",$profile_id,$tol_amount);
				mysqli_stmt_execute($stmt);
				header("location:pra.php?checkout=success");
				exit();

		}

}
?>

<div>
	<h1 style="color: green;">You have successfully Purchased</h1>
</div>