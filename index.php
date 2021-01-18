<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>

	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	       <section class="content">
	        <div class="row">

	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/porche.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/polestar.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/lambo.jpg" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
	        </div>
	      </section>
				<section class="content">
					<div class="row">
						<div class='col-sm-4'>
							<div class='box box-solid'>
								<div class='box-body prod-body'>
									<img src="images/2019-Audi-Q8-1200x628-Graphic.jpg" width="340" height="250">
									<h5>Audi Q8</h5>
								</div>
							</div>
						</div>
						<div class='col-sm-4'>
							<div class='box box-solid'>
								<div class='box-body prod-body'>
									<img src="images/2020-Audi-Q5.jpg" width="340" height="250">
									<h5>Audi Q5</h5>
								</div>
							</div>
						</div>
						<div class='col-sm-4'>
							<div class='box box-solid'>
								<div class='box-body prod-body'>
									<img src="images/bmw-x6.jpg" width="340" height="250">
									<h5>BMW X6</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class='col-sm-4'>
							<div class='box box-solid'>
								<div class='box-body prod-body'>
									<img src="images/2019-bmw-z4-m40i.jpg" width="340" height="250">
									<h5>BMW Z4</h5>
								</div>
							</div>
						</div>
							<div class='col-sm-4'>
								<div class='box box-solid'>
									<div class='box-body prod-body'>
										<img src="images/clasee CLA.jpg" width="340" height="250">
										<h5>Mercedes-Benz CLA</h5>
									</div>
								</div>
							</div>
								<div class='col-sm-4'>
									<div class='box box-solid'>
										<div class='box-body prod-body'>
											<img src="images/nissan-navara-4x4-vl-sport-edition-at-2018-5ab8acdd7d3f0.jpg" width="340" height="250">
											<h5>Nissan Navara</h5>
										</div>
									</div>
								</div>
							</div>
						</section>
			    </div>
			  </div>
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>
