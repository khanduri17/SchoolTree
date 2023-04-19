<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			                        <input style="display:  none;" name="userType" value="1">
			                    <div class="row mb-3 px-3"> <button type="submit" id="signin" class="btn btn-primary text-center">Sign in</button> </div>
		                    </form>
		                    <p style="color: red" id="signInError">${error}</p>
		                    <p>New User? <a href="teacher_signup" style="color: #ffc400">SignUp Here.</a></p>
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
	    if('${error}'!==''){
	    	$('#phone').val('${phone}');//'${error}
	    	$('#signInError').show();
	    }
	});
</script>
 
</html>