<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
<meta charset="ISO-8859-1">
<title>School Online</title>
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
		                        <h6 class="mb-0 mr-4 mt-2">Sign Up</h6>
		                    </div>
		                    <form action="auth" method="post" >
			                    <div class="row px-3"> <label class="mb-1">
			                            <h6 class="mb-0 text-sm">Phone</h6>
			                        </label> <input class="mb-4" type="text" name="phone" id="phone" placeholder="Enter a valid phone number" maxlength="10"> </div>
			                    <div class="row mb-3 px-3"> <button type="button" id="sendOTP" class="btn btn-primary text-center">Send OTP</button> </div>
			                    <p id="errorbar" style="display: none;color:Tomato;" >  </p>
		                    </form>
		                    
		                    <div id="verifyOTPDiv" style="display: none;">
		                    	<div class="row px-3"> <label class="mb-1">
			                            <h6 class="mb-0 text-sm">Enter OTP</h6>
			                        </label> <input class="mb-4" type="text" name="otp" id="inputOTP" placeholder="Enter the OTP."> </div>
			                    <div class="row mb-3 px-3"> <button type="button" id="verifyOTP" class="btn btn-primary text-center">Verify OTP</button> </div>
		                    </div>
		                    <p>Already a user? <a href="teacher_login" style="color: #ffc400">SignIn Here.</a></p>
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
		
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<script>
	
	$(document).ready(function() {

		$("#verifyOTP").click(function(){
		          var otp = $('#inputOTP').val();
		          var phone = $('#phone').val();
		          var category=$('#category').val();
		          
		          console.log('sending...'+otp);
	        	  $.ajax({
	        		    url: "verifyotp",
		        		method: 'POST',
		  	            data: {
			                'phone': phone,
			                'otp': otp,
			                'userType':'1' 
			            }, success: function(result){
			            	// console.log('success ...');
			            	 if(result==="Otp incorrect"){
				            		document.getElementById("errorbar").innerHTML="Wrong otp";
				            		document.getElementById("errorbar").style.display = 'block';
			            	 }
			            	 else{
			            		 location.replace("teacher_profile");
			            	 }
		        	   },error: function(data) { 			            	 
		        		     console.log('error  ...'+data);
		        	   }
		          });
	    });
	        
	    $('#sendOTP').click(function() {
	    	
	    	document.getElementById("errorbar").style.display = 'none';
	    	
	        var phone = $('#phone').val();
	        
	        if(phone===''){
	        	  alert("enter valid phone number ... ");
	        }else{
		    	console.log('sendotp clicked'+phone);
		       // alert("sendOTP ... "+phone);
		        $('#sendOTP').html('<span id="loaderspan" class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Sending...').attr('disabled', true);
	
		        $.ajax({
		            url: 'sendotp',
		            method: 'POST',
		            data: {
		                'phone': phone		                
		            },
		            success: function(data) {
				        $('#sendOTP').attr('disabled', false);
		            	$('#loaderspan').remove();
		                document.getElementById("verifyOTPDiv").style.display = "block";
		                document.getElementById("sendOTP").innerText = 'Resend OTP';
		            },
		            error: function(data) { //error function
		            	console.log("data"+JSON.stringify(data));
		            
		            	$('#loaderspan').remove();
		                $('#sendOTP').attr('disabled', false);

		            	if(data.responseText==="alreadyexists")
		            	{
		            		document.getElementById("errorbar").innerHTML="User already exists";
		            		document.getElementById("errorbar").style.display = 'block';
		            	}
		            	else{
		            		document.getElementById("errorbar").innerHTML="Wrong or Invalid mobile phone number. Please correct and try again.";
		            		document.getElementById("errorbar").style.display = 'block';

		            	}
		            	document.getElementById("phone").value = '';

		                document.getElementById("sendOTP").innerText = 'Send OTP';

		               
		            }
		        });
	       }
	    });
	});
</script>
<script type="text/javascript">
 
</script>

 
</html>