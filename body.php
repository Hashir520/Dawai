
   <div class="main main-raised">
   <div class="col-md-4 ">
	<a href="store.php">
	<div class="item active">
        <img src="img/banner7.jpg.jpg" alt="Los Angeles" style="width:100%;"> 
		<div></a> 
      </div>
	</div>
</div>
   <div class="col-md-8">
        <div class="container " style="width:100%;">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
   
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/banner3.jpg" alt="Los Angeles" style="width:100%;">     
      </div>

      <div class="item">
        <img src="img/banner2.jpg" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="img/banner4.jpg" alt="New York" style="width:100%;">
      </div>

      <div class="item">
        <img src="img/banner1.jpg" alt="New York" style="width:100%;">  
      </div>

      <!-- <div class="item">
        <img src="img/banner3.jpg" alt="New York" style="width:100%;">  
      </div> -->
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only" >Previous</span>
    </a>
    <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>  


	<!-- SECTION -->
	<div class="section ">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=114"><div class="shop">
						<div class="shop-img">
							<img src="./img/shop01.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Surgical Kit<br>Collection</h3>
							<a href="product.php?p=114" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div></a>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=103"><div class="shop">
						<div class="shop-img">
							<img src="./img/shop03.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Baby Care<br>Collection</h3>
							<a href="product.php?p=103" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div></a>
				</div>
				<!-- /shop -->

				<!-- shop -->
				<div class="col-md-4 col-xs-6">
					<a href="product.php?p=110"><div class="shop">
						<div class="shop-img">
							<img src="./img/shop02.png" alt="">
						</div>
						<div class="shop-body">
							<h3>Skin Care<br>Collection</h3>
							<a href="product.php?p=110" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
						</div>
                        </div></a>
				</div>
				<!-- /shop -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
		  
		

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">New Products</h3>
						<div class="section-nav">
							<ul class="section-tab-nav tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Organic</a></li>
								<li><a data-toggle="tab" href="#tab1">Health Care</a></li>
								<li><a data-toggle="tab" href="#tab1">Medicines</a></li>
								<li><a data-toggle="tab" href="#tab1">Personal Care</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12 ">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1" >
								<?php
								include 'db.php';
								$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 0 AND 1000";
								$run_query = mysqli_query($con,$product_query);
								
								if(mysqli_num_rows($run_query) > 0){
									while($row = mysqli_fetch_array($run_query)){
										$pro_id    = $row['product_id'];
                                        $pro_cat   = $row['product_cat'];
                                        $pro_brand = $row['product_brand'];
                                        $pro_title = $row['product_title'];
                                        $pro_price = $row['product_price'];
                                        $pro_image = $row['product_image'];
                                        $cat_name = $row["cat_title"];
									echo "
									<div class='product'>
									    <a href='product.php?p=$pro_id'><div class='product-img'>
										    <img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										        <div class='product-label'>
											        <span class='new'>NEW</span>
										        </div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>Pkr $pro_price</h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										<div class='product-btns'>
											<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											<button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
										</div>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
			                ";
		                };
                    }?>
										<!-- product -->
										<!-- /product -->
										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section mainn mainn-raised">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days</span>
									</div>
								</li>
								<li>
									<div>
										<h3>10</h3>
										<span>Hours</span>
									</div>
								</li>
								<li>
									<div>
										<h3>34</h3>
										<span>Mins</span>
									</div>
								</li>
								<li>
									<div>
										<h3>60</h3>
										<span>Secs</span>
									</div>
								</li>
							</ul>
							<h2 class="text-uppercase">Hot deal this week</h2>
							<p>New Collection Up to 50% OFF</p>
							<a class="primary-btn cta-btn" href="store.php">Shop now</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Top selling</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab2">Health Care</a></li>
									<li><a data-toggle="tab" href="#tab2">Skin Care</a></li>
									<li><a data-toggle="tab" href="#tab2">Medicines</a></li>
									<li><a data-toggle="tab" href="#tab2">Organic</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 ">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<?php
										include 'db.php';
										$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 105 AND 200";
                                        $run_query = mysqli_query($con,$product_query);
                                        if(mysqli_num_rows($run_query) > 0){
                                            while($row = mysqli_fetch_array($run_query)){
                                                $pro_id    = $row['product_id'];
                                                $pro_cat   = $row['product_cat'];
                                                $pro_brand = $row['product_brand'];
                                                $pro_title = $row['product_title'];
                                                $pro_price = $row['product_price'];
                                                $pro_image = $row['product_image'];
                                                $cat_name = $row["cat_title"];
                                        echo "
								            <div class='product'>
									            <a href='product.php?p=$pro_id'><div class='product-img'>
										            <img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										        <div class='product-label'>
											        <span class='sale'>25%</span>
											        <span class='new'>NEW</span>
										        </div>
									        </div></a>
									        <div class='product-body'>
										        <p class='product-category'>$cat_name</p>
										        <h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										        <h4 class='product-price header-cart-item-info'>Pkr $pro_price</h4>
										    <div class='product-rating'>
											    <i class='fa fa-star'></i>
											    <i class='fa fa-star'></i>
											    <i class='fa fa-star'></i>
											    <i class='fa fa-star'></i>
											    <i class='fa fa-star'></i>
										    </div>
										    <div class='product-btns'>
											    <button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											    <button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
										    </div>
									    </div>
									    <div class='add-to-cart'>
										    <button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									    </div>
								    </div>           
			                    ";
		                }; 
					}
				?>					
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>
						

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div id="get_product_home">
								<!-- product widget -->
								
								<!-- product widget -->
							</div>

							<div id="get_product_home2">


								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HEALTH CARE</p>
										<h3 class="product-name"><a href="product.php?p=106">CERTEZA BLOOD PRESSURE MONITOR (BM-407)</a></h3>
										<h4 class="product-price">Pkr 4090.00</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HERBAL</p>
										<h3 class="product-name"><a href="product.php?p=107">HAMDARD SHARBAT-E- TOOT SIYAH 120ML LIQUID</a></h3>
										<h4 class="product-price">Pkr 100.00</h4>
									</div>
								</div>
								<!-- product widget -->
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">SURGICAL KIT</p>
										<h3 class="product-name"><a href="product.php?p=114">FIRST AID BOX</a></h3>
										<h4 class="product-price">Pkr 4580.00</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">SURGICAL KIT</p>
										<h3 class="product-name"><a href="product.php?p=114">FIRST AID BOX</a></h3>
										<h4 class="product-price">Pkr 4580.00</h4>
									</div>
								</div>
								<!-- product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HERBAL</p>
										<h3 class="product-name"><a href="product.php?p=113">HAMDARD ROGHAN-E-BADAM SHEERIN 25ML LIQUID</a></h3>
										<h4 class="product-price">Pkr 320.00</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">BABY CARE</p>
										<h3 class="product-name"><a href="product.php?p=103">JOHNSON’S 2-IN-1 KIDS</a></h3>
										<h4 class="product-price">Pkr 950.00</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product07.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">ORGANIC</p>
										<h3 class="product-name"><a href="product.php?p=112">HAMDARD KHAMIRA GAOZABAN SADA 100 GRAM</a></h3>
										<h4 class="product-price">Pkr 189.00</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">SURGICAL KIT</p>
										<h3 class="product-name"><a href="product.php?p=114">FIRST AID BOX</a></h3>
										<h4 class="product-price">Pkr 4580.00</h4>
									</div>
								</div>
								<!-- product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product09.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">BABY CARE</p>
										<h3 class="product-name"><a href="product.php?p=101">BONA PAPA PLUS ECONOMY - MEDIUM</a></h3>
										<h4 class="product-price">Pkr 1590.00</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs">
					    
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">ORGANIC</p>
										<h3 class="product-name"><a href="product.php?p=111">HAMDARD KHUBAN 175ML LIQUID</a></h3>
										<h4 class="product-price">Pkr 175.00</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HEALTH CARE</p>
										<h3 class="product-name"><a href="product.php?p=108">CERTEZA BLOOD PRESSURE MONITOR (BM-407)</a></h3>
										<h4 class="product-price">Pkr 4090.00</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HERBAL</p>
										<h3 class="product-name"><a href="product.php?p=107">HAMDARD SHARBAT-E- TOOT SIYAH 120ML LIQUID</a></h3>
										<h4 class="product-price">Pkr 100.00</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">SURGICAL KIT</p>
										<h3 class="product-name"><a href="product.php?p=110">FIRST AID BOX</a></h3>
										<h4 class="product-price">Pkr 4580.00</h4>
									</div>
								</div>
								<!-- /product widget -->
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">BABY CARE</p>
										<h3 class="product-name"><a href="product.php?p=101">BONA PAPA PLUS ECONOMY - MEDIUM</a></h3>
										<h4 class="product-price">Pkr 1590.00</h4>
									</div>
								</div>
								<!-- product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">HERBAL</p>
										<h3 class="product-name"><a href="product.php?p=113">HAMDARD ROGHAN-E-BADAM SHEERIN 25ML LIQUID</a></h3>
										<h4 class="product-price">Pkr 320.00</h4>
									</div>
								</div>
								<!-- /product widget -->
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</div>
		