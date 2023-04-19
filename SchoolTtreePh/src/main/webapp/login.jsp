<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>School Online</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
</head>
<body>

<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		    <div class="card  ">
		        <div class="row d-flex">
		            <div class="col-lg-6">
		                <div class="card1 pb-5">
		                    <div class="row"> <img src="https://i.imgur.com/CXQmsmF.png" class="logo"> </div>
		                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
		                </div>
		            </div>
		            <div class="col-lg-6">
		                <div class="card2 card border-0 px-4 py-5">
		                    <div class="row mb-4 px-3">
		                        <h6 class="mb-0 mr-4 mt-2">Sign In</h6>
		                    </div>
		                    <form method="post" action="checkuser">
			                    <div class="row px-3"> <label class="mb-1">
			                            <h6 class="mb-0 text-sm">Phone</h6>
			                        </label> <input required class="mb-4" type="text" name="phone" id="phone" placeholder="Enter a valid phone number"> </div>
			                    <div class="row px-3"> <label class="mb-1">
			                            <h6 class="mb-0 text-sm">Password</h6>
			                        </label> <input required class="mb-4" type="password" name="password" id="password" placeholder="Enter your password"> </div>
			                    <div class="row mb-3 px-3"> <button type="submit" id="signin" class="btn btn-primary text-center">Sign in</button> </div>
		                    </form>
		                    <p style="color: red" id="signInError">${error}</p>
		                    <p>New User? <a href="signup" style="color: #ffc400">SignUp Here.</a></p>
		                </div>
		            </div>
		        </div>		       
		    </div>
		</div>
		<div class="bg-primary py-4 index-footer">
		            <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2022. All rights reserved.</small>
		                <div class="social-contact ml-4 ml-sm-auto"> <span class="fa fa-facebook mr-4 text-sm"></span> <span class="fa fa-google-plus mr-4 text-sm"></span> <span class="fa fa-linkedin mr-4 text-sm"></span> <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span> </div>
		            </div>
		</div>
<!-- 	
	<form method="post" >
	Phone
		<input name="phone" id="phone" />
		<br/>
		<button type="button" id="sendotp" style="display: block;">SUBMIT</button>
		<input name="enterotp" id="enterotp" style="display: none;" /> 
		<button type="button" id="submitotp"  style="display: none;" >SUBMIT OTP </button>
	</form>
 -->
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>


<script>
	
	$(document).ready(function() {

		$("#submitotp").click(function(){
		          var otp = $('#enterotp').val();
		          var phone = $('#phone').val();
		          console.log('sending...'+otp);
	        	  $.ajax({
	        		    url: "verifyotp",
		        		method: 'POST',
		  	            data: {
			                'phone': phone,
			                'otp': otp
			            }, success: function(result){
			            	 console.log('success ...'+result);
		        	   },error: function(data) { 
		        		   console.log('error  ...'+data);
		        	   }
		          });
	    });
	        
		console.log('out ajax');
	    $('#sendotp,#resendotp').click(function() {
	    	console.log('sendotp clicked');
	        var phone = $('#phone').val();
	        //alert(phone);
	        $.ajax({
	            url: 'sendotp',
	            method: 'POST',
	            data: {
	                'phone': phone //pass value 
	            },
	            success: function(data) {
	                //success function
	                //return data form server
	                alert('Otp sent to:' + phone);
	
	                document.getElementById("enterotp").style.display = "block";
	                document.getElementById("submitotp").style.display = "block";
	
	            },
	            error: function(data) { //error function
	                alert('Failed to send Otp :' + phone);
	                console.log(data);
	            }
	        });
	    });
	    
	    if('${error}'!==''){
	    	$('#phone').val('${phone}');
	    	$('#signInError').show();
	    }
	});
</script>
 
</html>