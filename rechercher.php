<link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/dashboard.css" rel="stylesheet">
<!DOCTYPE html>
<html lang="en">
<head>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     
     <style>
.btn {
  background-color: #28a745;
  border: none;
  color: white;
  padding: 10px;
  margin: 0px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  cursor: pointer;
}

tr:hover {background-color: #f5f5f5;}

</style>


     <meta charset="UTF-8">
     <title>CHERCHER</title>
</head>
<body>
<div class="container">
   <div class="row">
   <div class="col-md-8 col-md-offset-2" style="margin-top: 5%;">
   <div class="row">
   <?php 

$conn = new mysqli('localhost', 'root', '', 'web');
if(isset($_GET['search'])){
   $searchKey = $_GET['search'];
   $sql = "SELECT  * FROM conseil_d WHERE id LIKE '%$searchKey%'";
}else
$sql = "SELECT * FROM conseil_d";
$result = $conn->query($sql);
?>
   <form action="" method="GET"> 
     <div class="col-md-6">
        <input type="text" name="search" class='form-control' placeholder="chercher avec l'id " value="" > 
     </div>
     <div class="col-md-6 text-left">
        <button class="btn">Chercher</button>
     </div>
   </form>
   <br>
   <br>
   </div>

   <table class="table table-bordered">
     <tr>
     <th>id</th>
        <th>type</th>
        <th>titre</th>
       <th>image</th>
       <th>description</th>
     
   
     <?php while ( $row = $result-> fetch_object() ): ?>
  <tr>
     <td><?php echo $row->id ?></td>
     <td><?php echo $row->type ?></td>
     <td><?php echo $row->titre ?></td>
     <td><?php echo $row->image ?></td>
     <td><?php echo $row->description ?></td>
     </tr>
     <?php endwhile; ?>
    </table>

    </div>
    </div>
</div>
</body>
</html>