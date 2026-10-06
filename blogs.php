<?php include("includes/main_header.php"); ?>

    <?php include("includes/navbar.php"); ?>

	<section class="hero-wrap js-fullheight" style="background-image: url('images/image.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight justify-content-center align-items-center">
				<div class="col-lg-8 col-md-6 ftco-animate d-flex align-items-center">
					<div class="text text-center">
						<span class="subheading">Hey! I am</span>
						<h1>SBlogger</h1>
						<h2>I'm a
							<span class="txt-rotate" data-period="2000"
								data-rotate='[ "Sujal Patel" ]'></span>
						</h2>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- <div class="mouse">
			<a href="#" class="mouse-icon">
				<div class="mouse-wheel"><span class="ion-ios-arrow-round-down"></span></div>
			</a>
		</div> -->
	</section>

	<section class="ftco-section" id="blog-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h1 class="big big-2">Blog</h1>
					<h2 class="mb-4">Our Blog</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
				</div>
			</div>
			<div class="row d-flex">
				<?php $conn=mysqli_connect("localhost","root","","blog_db");
					$blog_query=mysqli_query($conn,"select * from blog_item");
					while($blog_row=mysqli_fetch_array($blog_query))
					{
						?>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="single.php" class="block-20" style="background-image: url('uploads/<?php echo $blog_row['blog_thumb']; ?>');">
						</a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading"><a href="single.php?blog_id=<?php echo $blog_row['blog_id']; ?>"><?php echo $blog_row['blog_title']; ?></a>
							</h3>
							<div class="d-flex align-items-center mb-3 meta">
								<p class="mb-0">
									<span class="mr-2"><?php echo $blog_row['created_date']; ?></span>
									<a href="#" class="mr-2">Admin</a>
									<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
								</p>
							</div>
							<p><?php echo $blog_row['blog_description']; ?></p>
						</div>
					</div>
				</div>
					<?php
						}
					?>
				<!-- <div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
						</a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a>
							</h3>
							<div class="d-flex align-items-center mb-3 meta">
								<p class="mb-0">
									<span class="mr-2">Sept. 12, 2019</span>
									<a href="#" class="mr-2">Admin</a>
									<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
								</p>
							</div>
							<p>A small river named Duden flows by their place and supplies it with the necessary
								regelialia.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry">
						<a href="single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
						</a>
						<div class="text mt-3 float-right d-block">
							<h3 class="heading"><a href="single.html">Why Lead Generation is Key for Business Growth</a>
							</h3>
							<div class="d-flex align-items-center mb-3 meta">
								<p class="mb-0">
									<span class="mr-2">Sept. 12, 2019</span>
									<a href="#" class="mr-2">Admin</a>
									<a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a>
								</p>
							</div>
							<p>A small river named Duden flows by their place and supplies it with the necessary
								regelialia.</p>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</section>


    <?php include("includes/footer.php"); ?>

<?php include("includes/main_footer.php"); ?>