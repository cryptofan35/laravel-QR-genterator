<?php
$f = "visit.php";
if(!file_exists($f)){
	touch($f);
	$handle =  fopen($f, "w" ) ;
	fwrite($handle,0) ;
	fclose ($handle);

}
 
// include('phpqrcode/qrlib.php'); 

function getUsernameFromEmail($email) {
	$find = '@';
	$pos = strpos($email, $find);
	$username = substr($email, 0, $pos);
	return $username;
}

if(isset($_POST['submit']) ) {
	$tempDir = 'temp/'; 
	$email = $_POST['mail'];
	$subject =  $_POST['subject'];
	$filename = getUsernameFromEmail($email);
	$body =  $_POST['msg'];
	$codeContents = 'mailto:'.$email.'?subject='.urlencode($subject).'&body='.urlencode($body); 
	QRcode::png($codeContents, $tempDir.''.$filename.'.png', QR_ECLEVEL_L, 5);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="csrf-token" content="{{ csrf_token() }}" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>@yield('title')</title>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.5/flatly/bootstrap.min.css" rel="stylesheet">
	<link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/style1.css" rel="stylesheet">
	<script src="css/navbarclock.js"></script>
	<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
	<!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            body {
			padding-top: 70px;
		}
        </style>
	@yield('style')
</head>
<body onload="startTime()" style="background-color:#d6fffa;">
	<nav class="navbar navbar-default navbar-fixed-top">
	    <div >
	        <!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	           
	            <a class="navbar-brand" href="{{url('/')}}">QR Generator</a>
	        </div>

			<div class="collapse navbar-collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					@if (!Sentinel::getUser())
                        @if (Sentinel::check() )
                        <li><a href="{{ url('qrLogin') }}">QR Generator</a></li>
                        @endif
                        <li><a href="{{ url('login') }}">Signin</a></li>
						<li><a href="{{ url('register') }}">Signup</a></li>
					@else
						<li><a href="{{ url('/') }}">Home</a></li>
						@if(Sentinel::inRole('admin'))
                        <li><a href="{{url('dashboard')}}">Admin Management</a></li>
                        @else
                        <li><a href="{{url('qrcode')}}">QR Generator</a></li>
                        @endif
                        <li><a href="{{url('user/logout/now')}}">Logout</a></li>
						<li style="width:30px;"></li>
					@endif
				</ul>
			</div>

	    </div><!-- /.container-fluid -->
	</nav>
	<!-- <div class="myoutput" style="background-color:#d6fffa;"> -->
		<div id="clockdate">
			<div class="clockdate-wrapper">
				<div id="clock"></div>
				<div id="date"><?php echo date('l, F j, Y'); ?></div>
			</div>
		</div>
		<h3><strong>Quick Response (QR) Code Generator</strong></h3>
		<div class="input-field">
			<h3>Please Fill-out All Fields</h3>
			<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
				<div class="form-group">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<label>First Name</label>
							<input type="text" class="form-control" name="firstname" style="width:10em;" placeholder="Enter your Firstname" value="<?php echo @$firstname; ?>" required />
						</li>
						<li>
							<label>Last Name</label>
							<input type="text" class="form-control" name="lastname" style="width:10em;" placeholder="Enter your Lastname" value="<?php echo @$lastname; ?>" required />
						</li>
					</ul>
				</div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="mail" style="width:20em;" placeholder="Enter your Email" value="<?php echo @$email; ?>" required />
				</div>
				<div class="form-group">
					<label>Phone</label>
					<input type="text" class="form-control" name="phone" style="width:20em;" placeholder="Enter your Phone Number" value="<?php echo @$subject; ?>" required pattern="[a-zA-Z .]+" />
				</div>
				<div class="form-group">
					<label>Address</label>
					<input type="text" class="form-control" name="adress" style="width:20em;" value="<?php echo @$body; ?>" required pattern="[a-zA-Z0-9 .]+" placeholder="Enter your Address"></textarea>
				</div>
				<div class="form-group">
					<input type="submit" name="submit" class="btn btn-primary submitBtn" style="width:20em; margin:0;" />
				</div>
			</form>
		</div>
		<?php
			if(!isset($filename)){
				$filename = "author";
			}
			?>
		<div class="qr-field">
			<h2 style="text-align:center">QR Code Result: </h2>
			<center>
				<div class="qrframe" style="border:2px solid black; width:210px; height:210px;">
				<?php echo '<img src="temp/'. @$filename.'.png" style="width:200px; height:200px;"><br>'; ?>
				</div>
				<a class="btn btn-primary submitBtn" style="width:210px; margin:5px 0;" href="download.php?file=<?php echo $filename; ?>.png ">Download QR Code</a>
			</center>
		</div>
		<div class = "dllink" style="text-align:center;margin:-100px 0px 50px 0px;">
			<h4>Developer: Kiryl K </h4>
		</div>
	<!-- </div> -->
	<!-- Scripts -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
	 <script type="text/javascript">
      $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        });
    </script>
	@yield('scripts')
</body>
</html>