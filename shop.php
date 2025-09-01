<?php
if(isset($_POST['buy-btn'])){
   
   // exit;
}
include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>shop</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="products">

   <h1 class="heading">latest products</h1>

   <div class="box-container">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products`"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form id="myform" action="" method="post" class="box">
      <input id="id" type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input id="pid" type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input id="name" type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
      <input id="price" type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input id="image" type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <!-- <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button> -->
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price"><span>₹</span><?= $fetch_product['price']; ?><span>/-</span></div>
         <input id="qty" type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
      </div>
      <input id="add-to-cart" type="submit" value="add to cart" class="btn" name="add_to_cart">
      <a href="single_checkout.php?pid=<?= $fetch_product['id']; ?>&name=<?= $fetch_product['name']; ?>&price=<?= $fetch_product['price']; ?>"  class="btn <?= ($grand_total > 1); ?>" >Buy Now</a>
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products found!</p>';
   }
   ?>

   </div>

</section>
<script>
function submitForm(event) {
  event.preventDefault(); // prevent default form submission or anchor tag navigation
  var form = document.getElementById("myform");
  var method = "POST";
  var data = "";
  
  if (event.target.tagName === "A") {
    method = "GET";
    data = "?pid=" + encodeURIComponent(document.getElementById("a").value)
      + "&name=" + encodeURIComponent(document.getElementById("name").value)
      + "&price=" + encodeURIComponent(document.getElementById("price").value)
      + "&qty=" + encodeURIComponent(document.getElementById("qty").value)
      + "&add_to_cart=" + encodeURIComponent(document.getElementById("add-to-cart").value);
  }
  
  form.method = method;
  form.action = "single_checkout.php" + data;
  form.submit();
}
</script>













<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>