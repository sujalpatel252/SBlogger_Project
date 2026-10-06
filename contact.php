<?php 
$conn=mysqli_connect("localhost","root","","blog_db");
if(isset($_POST['submit']))
{
    $contact_name=$_POST['contact_name'];
    $contact_email=$_POST['contact_email'];
    $contact_subject=$_POST['contact_subject'];
    $contact_message=$_POST['contact_message'];

    $query=mysqli_query($conn,"insert into blog_contact (contact_name,contact_email,contact_subject,contact_message) values ('$contact_name','$contact_email','$contact_subject','$contact_message')");
    if($query)
    {
        echo "Inserted Successfully";
    }
    else
    {
        echo "error";
    }
}
?>
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

	<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h1 class="big big-2">Contact</h1>
					<h2 class="mb-4">Contact Me</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
				</div>
			</div>

			<div class="row d-flex contact-info mb-5">
				<div class="col-md-6 col-lg-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4 shadow">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-map-signs"></span>
						</div>
						<div>
							<h3 class="mb-4">Address</h3>
							<p>7, Umiyanagar Society Railway East, Kalol</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4 shadow">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-phone2"></span>
						</div>
						<div>
							<h3 class="mb-4">Contact Number</h3>
							<p><a href="tel://1234567920">+91 8401187678</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4 shadow">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-paper-plane"></span>
						</div>
						<div>
							<h3 class="mb-4">Email Address</h3>
							<p><a href="mailto:sujalpatel2453@yoursite.com">sujalpatel2453@gmail.com</a></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 d-flex ftco-animate">
					<div class="align-self-stretch box text-center p-4 shadow">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="icon-globe"></span>
						</div>
						<div>
							<h3 class="mb-4">Website</h3>
							<p><a href="#">SBlogger@gmail.com</a></p>
						</div>
					</div>
				</div>
			</div>

			<div class="row no-gutters block-9">
				<div class="col-md-6 order-md-last d-flex">
					<form action="" class="bg-light p-4 p-md-5 contact-form" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Your Name" name="contact_name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Enter Your Email" name="contact_email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Your Subject" name="contact_subject">
						</div>
						<div class="form-group">
							<textarea id="" cols="30" rows="7" class="form-control"
								placeholder="Enter Your Message" name="contact_message"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary py-3 px-5" name="submit">
						</div>
					</form>

				</div>

				<div class="col-md-6 d-flex">
					<div class="img" style="background-image: url(images/about.jpg);"></div>
				</div>
			</div>
		</div>
	</section>

    <?php include("includes/footer.php"); ?>

<?php include("includes/main_footer.php"); ?>