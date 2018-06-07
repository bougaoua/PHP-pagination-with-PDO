<?php
// try connection to database
try 
{
  $pdo = new PDO('mysql:host=localhost;dbname=pagination', 'root', '');

}
catch (PDOException $e) 
{
    echo 'Error: ' . $e->getMessage();
    exit();
}

// Query
$code   = $pdo->prepare("SELECT * FROM article");
$code->execute();

// get number articles.
$count = count($code->fetchAll(PDO::FETCH_ASSOC));

// number article.
$div = 3;

// number page.
$count = ceil($count / $div);

// get next page
if (isset($_GET["next_page"])) {
  $page = $_GET["next_page"];
} else {
  $page = 1;
}

// Mathematical equation to determine the beginning of the next article.
$start = ( $page - 1 ) * $div;
?>
<link rel="stylesheet" href="style.css"  />

      <div class="row">
        <?php
        // Query
        $code   = $pdo->prepare("SELECT * FROM article ORDER BY post_id ASC LIMIT $start,$div");
        $code->execute();
        while ($row = $code->fetch(PDO::FETCH_ASSOC)) { ?>
          <div class="post">
            <img class="post-img-top" src="image.png" alt="">
            <div class="post-body">
              <h4 class="post-title"><?php echo $row['post_title']; ?></h4>
              <p class="post-text"><?php echo $row['post_content']; ?></p>
            </div>
          </div>
        <?php } ?>
      </div>

      </br>

      <div class="row">
         <ul class="pagination">
         <?php for ($i=1; $i <= $count; $i++) { ?>
          <li ><a href="index.php?next_page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
         <?php } ?>
         </ul>
      </div>