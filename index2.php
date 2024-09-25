<?php
include('./config.php');

if(isset($_SESSION['khongmuahang'])&&($_SESSION['khongmuahang'])==1&&isset($_SESSION['nutchitietsp'])&&($_SESSION['nutchitietsp'])==1){
    echo '<script>alert("Vui lòng đăng nhập để mua hàng!")</script>';
    unset($_SESSION['khongmuahang']);
    unset($_SESSION['nutchitietsp']);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="minhson.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> -->
    <link rel="stylesheet" href="./fontawesome-free-6.2.1-web/css/all.min.css">
    <title>dekor</title>
</head>

<body>
    <!-- Start nav-bar -->
    
    <!-- End nav-bar -->

    <!-- Start header -->
    <header>
        <div id="demo" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="#about"><img src="./img/asd.png" alt="Seiko" class="d-block" style="width: 100%;"></a>
                    <div class="carousel-caption">
                        <a class="btn btn-primary py-2 border" href="./index.php?layout=tatcasp&id_dm=0">Mua ngay </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="#collection"> <img src="./img/img3.jpg" alt="Casio" class="d-block" style="width:100%"></a>
                    <div class="carousel-caption">
                        <a class="btn btn-primary py-2 border" href="./index.php?layout=tatcasp&id_dm=0">Mua ngay</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="#contact"><img src="./img/image3.webp" alt="Skagen" class="d-block" style="width:100%"></a>
                    <div class="carousel-caption">
                        <a class="btn btn-primary py-2" href="./index.php?layout=tatcasp&id_dm=0">Mua ngay</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <a href="#contact"><img src="./img/image4.webp" alt="Skagen" class="d-block" style="width:100%"></a>
                    <div class="carousel-caption">
                        <a class="btn btn-primary py-2" href="./index.php?layout=tatcasp&id_dm=0">Mua ngay</a>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </header>
    <!-- End header -->

    <!-- Start limited -->
    <section id="limited" class="py-5">
        <div class="container">
            <div class="title text-center py-5">
                <h2 class="position-relative d-inline-block">
                    Sản phẩm giới hạn
                </h2>
            </div>
            <div class="limited-list row g-0">
                <?php
                $sqlspgioihan = "SELECT * FROM products WHERE isshow='0' ORDER BY id ASC LIMIT 4";
                $queryspgioihan = mysqli_query($conn, $sqlspgioihan);
                while ($rowspgioihan = mysqli_fetch_assoc($queryspgioihan)) {
                    $linkimg = "./img/" . $rowspgioihan['image_url'];
            
                ?>
                <div class="col-md-3 p-2">
                    <a href="#" class="limited-img position-relative overflow-hidden">
                        <img src="<?php echo $linkimg; ?>" alt="" class="w-100">
                    </a>
                    <div class="text-center">
                        <p class="text-capitalize mt-3 mb-1"> <?php echo strtoupper($rowspgioihan['name']); ?></p>
                        <span class="fw-bold d-block"><?php echo number_format($rowspgioihan['price'], 0, ".", "."); ?> VNĐ</span>
                        <a href="./index.php?layout=chitietsp&id_sp=<?php echo $rowspgioihan['id']; ?>" class="btn mt-3" id="btnc" >Xem chi tiết</a>
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
        </div>
    </section>
    <!-- End limited -->

    <!-- Start collection -->
    <!-- <section id="collection" class="py-5">
        <div class="container">
            <div class="title text-center">
                <h2 class="position-relative d-inline-block">
                    Sản phẩm mới
                </h2>
            </div>
            <div class="row g-0 container ">
                <div class=" d-flex flex-wrap justify-content-center mt-5 button-group filter-button-group ">
                    <button type="button" class="btn m-2 text-dark active-filter-btn" id="btnc" data-filter="*">
                        Tất Cả
                    </button>
                    <button type="button" class="btn m-2 text-dark" id="btnc" data-filter=".casio">
                        Bàn Gỗ
                    </button>
                    <button type="button" class="btn m-2 text-dark" id="btnc" data-filter=".gshock">
                        Kệ Sách
                    </button>
                    <button type="button" class="btn m-2 text-dark" id="btnc" data-filter=".seiko">
                        Ghế SoFa
                    </button>
                    <button type="button" class="btn m-2 text-dark" id="btnc" data-filter=".skagen">
                        Tủ Quần Áo
                    </button>
                </div>
                <div class="collection-list mt-4 row gx-0 gy-3">
                    <?php
                      $sqlspcasio = "SELECT products.id,products.name,products.image_url,products.price,categories.name as category_name FROM products INNER JOIN categories ON products.category_id=categories.id WHERE categories.name='casio' AND products.isshow='0'  ORDER BY products.id ASC LIMIT 2";
                      $queryspcasio = mysqli_query($conn, $sqlspcasio);
                      while ($rowspcasio = mysqli_fetch_assoc($queryspcasio)) {
                      $linkimg = "./img/" . $rowspcasio['image_url'];
                    ?>
                    <div class="col-md-4 col-lg-3 p-2 <?php echo strtolower($rowspcasio['category_name']); ?> ">
                        <a href="#" class="info">
                            <div class="collection-img position-relative overflow-hidden">
                                <img src="<?php echo $linkimg; ?>" class="w-100">
                                <span
                                    class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center">Mới</span>
                            </div>
                        </a>
                        <div class="text-center">
                            <p class=""><?php echo strtoupper($rowspcasio['name']); ?></p>
                            <span class="fw-bold d-block"><?php echo number_format($rowspcasio['price'],0,".","."); ?> VNĐ</span>
                            <a href="./index.php?layout=chitietsp&id_sp=<?php echo $rowspcasio['id']; ?>" class="btn mt-3" id="btnc" >Xem chi tiết</a>
                        </div>
                    </div>
                    <?php
                      }
                    ?>

                    <?php
                      $sqlspcasio = "SELECT products.id,products.name,products.image_url,products.price,categories.name as category_name FROM products INNER JOIN categories ON products.category_id=categories.id WHERE categories.name='gshock' AND products.isshow='0'  ORDER BY products.id ASC LIMIT 2";
                      $queryspcasio = mysqli_query($conn, $sqlspcasio);
                      while ($rowspcasio = mysqli_fetch_assoc($queryspcasio)) {
                      $linkimg = "./img/" . $rowspcasio['image_url'];
                    ?>
                    <div class="col-md-4 col-lg-3 p-2 <?php echo strtolower($rowspcasio['category_name']); ?> ">
                        <a href="#" class="info">
                            <div class="collection-img position-relative overflow-hidden">
                                <img src="<?php echo $linkimg; ?>" class="w-100">
                                <span
                                    class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center">Mới</span>
                            </div>
                        </a>
                        <div class="text-center">
                            <p class=""><?php echo strtoupper($rowspcasio['name']); ?></p>
                            <span class="fw-bold d-block"><?php echo number_format($rowspcasio['price'],0,".","."); ?> VNĐ</span>
                            <a href="./index.php?layout=chitietsp&id_sp=<?php echo $rowspcasio['id']; ?>" class="btn mt-3" id="btnc" >Xem chi tiết</a>
                        </div>
                    </div>
                    <?php
                      }
                    ?>

                    <?php
                      $sqlspcasio = "SELECT products.id,products.name,products.image_url,products.price,categories.name as category_name FROM products INNER JOIN categories ON products.category_id=categories.id WHERE categories.name='seiko' AND products.isshow='0'  ORDER BY products.id ASC LIMIT 2";
                      $queryspcasio = mysqli_query($conn, $sqlspcasio);
                      while ($rowspcasio = mysqli_fetch_assoc($queryspcasio)) {
                      $linkimg = "./img/" . $rowspcasio['image_url'];
                    ?>
                    <div class="col-md-4 col-lg-3 p-2 <?php echo strtolower($rowspcasio['category_name']); ?> ">
                        <a href="#" class="info">
                            <div class="collection-img position-relative overflow-hidden">
                                <img src="<?php echo $linkimg; ?>" class="w-100">
                                <span
                                    class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center">Mới</span>
                            </div>
                        </a>
                        <div class="text-center">
                            <p class=""><?php echo strtoupper($rowspcasio['name']); ?></p>
                            <span class="fw-bold d-block"><?php echo number_format($rowspcasio['price'],0,".","."); ?> VND</span>
                            <a href="./index.php?layout=chitietsp&id_sp=<?php echo $rowspcasio['id']; ?>" class="btn mt-3" id="btnc" >Xem chi tiết</a>
                        </div>
                    </div>
                    <?php
                      }
                    ?>

                    <?php
                      $sqlspcasio = "SELECT products.id,products.name,products.image_url,products.price,categories.name as category_name FROM products INNER JOIN categories ON products.category_id=categories.id WHERE categories.name='skagen' AND products.isshow='0'  ORDER BY products.id ASC LIMIT 2";
                      $queryspcasio = mysqli_query($conn, $sqlspcasio);
                      while ($rowspcasio = mysqli_fetch_assoc($queryspcasio)) {
                      $linkimg = "./img/" . $rowspcasio['image_url'];
                    ?>
                    <div class="col-md-4 col-lg-3 p-2 <?php echo strtolower($rowspcasio['category_name']); ?> ">
                        <a href="#" class="info">
                            <div class="collection-img position-relative overflow-hidden">
                                <img src="<?php echo $linkimg; ?>" class="w-100">
                                <span
                                    class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center">Mới</span>
                            </div>
                        </a>
                        <div class="text-center">
                            <p class=""><?php echo strtoupper($rowspcasio['name']); ?></p>
                            <span class="fw-bold d-block"><?php echo number_format($rowspcasio['price'],0,".",".");?> VND</span>
                            <a href="./index.php?layout=chitietsp&id_sp=<?php echo $rowspcasio['id']; ?>" class="btn mt-3" id="btnc" >Xem chi tiết</a>
                        </div>
                    </div>
                    <?php
                      }
                    ?>
                    
                </div>
            </div>
        </div>
    </section> -->
    <!-- End section -->

    

    <!-- Start discount -->
<section id="discount" class="py-5 mt-5">
        <div class="container">
            <div class="row d-flex align-items-center text-center">
                <div class="discount-content">
                    <span class="text-white">Giảm giá lên đến 40%</span>
                    <h2 class="mt-2 mb-4 text-white">Ưu đãi giảm giá lớn</h2>
                    <a class="btn btn-primary py-2" href="./index.php?layout=tatcasp&id_dm=0">MUA NGAY</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End discount -->

    <!-- Start about us -->
    <section id="about" class="py-5">
        <div class="container">
            <div class="row gy-5 align-items-center">
                <div class="col-md-6 order-lg-1">
                    <div class="title pt-3 pb-5">
                        <h2 class="position-relative d-inline-block ms-4">Xin chào! Chúng tôi là Dekor</h2>
                    </div>
                    <p>Đầu tiên Dekor xin gửi lời chào, kính chúc sức khỏe, thành công và lời cảm ơn đến Quý khách hàng đã ủng hộ những sản phẩm của chúng tôi. Với hơn 10 năm kinh nghiệm về sản xuất, kinh doanh, thiết kế và thi công sản phẩm nội thất phục vụ cho không gian: phòng khách gia đình, nhà hàng, café, khách sạn . Dekor thấu hiểu được nhu cầu và thị hiếu của người tiêu dùng, tập thể chúng tôi luôn chú trọng đầu tư, thiết kế những sản phẩm chất lượng nhằm mang đến một không gian sống thật thoải mái, ấm cúng và tiện nghi cho người sử dụng.</p>
                </div>
                <div class="col-md-6 order-lg-0">
                    <img src="./img/img5.jpg" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    <!-- End about us -->

    <!-- Start contact -->
    <section id="contact" class="py-5">
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center">
                <div class="title text-center pt-3 pb-5">
                    <h2 class="position-relative d-inline-block ms-4">Liên hệ với chúng tôi</h2>
                </div>
                <p class="text-center text-muted">Liên hệ với chúng tôi để mua những sản phẩm mới nhất </p>
                <div class="input-group mb-3 mt-3">
                    <input type="text" class="form-control" placeholder="Gửi vấn đề cần được hỗ trợ của bạn tại đây...">
                    <button class="btn btn-primary" type="submit">Gửi</button>
                </div>
            </div>
        </div>
    </section>
    <!-- End contact -->

    <!-- Start footer -->
    
    <!-- End footer -->
    <script src="./js/jquery-3.6.1.js"></script>
    <script src="./js/isotope.pkgd.min.js"></script>
    <script src="./js/script.js"></script>
    <!-- <script src="./js/pagination.js"></script> -->
    <script src="./bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>