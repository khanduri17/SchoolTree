<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%
	String phone =(String) session.getAttribute("userPhone");
%>
<meta charset="ISO-8859-1">
<title>School Online</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
</head>
<body>

<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		    <div class="card  ">
		    	<form method="post" action="registernewuser">
			        <div class="row d-flex">
			            <div class="col-lg-6">
			                <div class="card1 pb-5">
			                	<div class="row mb-4 px-3">
			                        <h6 class="mb-0 mr-4 mt-2">Register</h6>
			                    </div>
			                   <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">First Name</h6>
				                        </label> <input required class="mb-4" type="text" name="firstname" id="firstname" placeholder="Enter first name"> </div>
				                <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Last Name</h6>
				                        </label> <input class="mb-4" type="text" name="lastname" id="lastname" placeholder="Enter last name"> </div>   
				                 <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Phone</h6>
				                        </label> <input class="mb-4" type="text" name="phone" id="phone" value="<%=phone%>" readonly> </div>    
				                <div class="row px-3" > <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Gender </h6>
						                        </label> 						         
												</br>
												<div class="col-sm-3">					  
												  <label class="form-check-label" for="exampleRadios1">
												  <input class="form-check-input" type="radio" name="gender" id="gender" value="male" >
												    Male
												  </label>
												</div>
												<div class="col-sm-4">
												  <input class="form-check-input" type="radio" name="gender" id="gender" value="female" >
												  <label class="form-check-label" for="exampleRadios2">
												    Female
												  </label>
												</div>
												<div class="col-sm-3">
												  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="other" >
												  <label class="form-check-label" for="exampleRadios2">
												    Other
												  </label>
												</div>
												
																								
								</div>
								</br>
				               <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Grade</h6>
				                        </label> <select name="grade"  class="form-control">
											    <% for (int i=1;i<13;i++){ %>
											      <option value=<%=i %>>Grade <%=i %> </option>
											     <%} %>
											      </select> 
								</div>
			                </div>
			            </div>
			            <div class="col-lg-6">
			                <div class="card2 card border-0 px-4 py-5">
				                    <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Email</h6>
				                        </label> <input required class="mb-4" type="text" name="email" id="email" placeholder="example@example.com"> </div>
				                    <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">City</h6>
				                        </label> <input required class="mb-4" type="text" name="city" id="city" placeholder="Enter your city"> </div>
				                    <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">State</h6>
				                        </label> <select id="state" name="state" class="mb-4">
												    <option value="AN">Andaman and Nicobar Islands</option>
												    <option value="AP">Andhra Pradesh</option>
												    <option value="AR">Arunachal Pradesh</option>
												    <option value="AS">Assam</option>
												    <option value="BR">Bihar</option>
												    <option value="CH">Chandigarh</option>
												    <option value="CT">Chhattisgarh</option>
												    <option value="DN">Dadra and Nagar Haveli</option>
												    <option value="DD">Daman and Diu</option>
												    <option value="DL">Delhi</option>
												    <option value="GA">Goa</option>
												    <option value="GJ">Gujarat</option>
												    <option value="HR">Haryana</option>
												    <option value="HP">Himachal Pradesh</option>
												    <option value="JK">Jammu and Kashmir</option>
												    <option value="JH">Jharkhand</option>
												    <option value="KA">Karnataka</option>
												    <option value="KL">Kerala</option>
												    <option value="LA">Ladakh</option>
												    <option value="LD">Lakshadweep</option>
												    <option value="MP">Madhya Pradesh</option>
												    <option value="MH">Maharashtra</option>
												    <option value="MN">Manipur</option>
												    <option value="ML">Meghalaya</option>
												    <option value="MZ">Mizoram</option>
												    <option value="NL">Nagaland</option>
												    <option value="OR">Odisha</option>
												    <option value="PY">Puducherry</option>
												    <option value="PB">Punjab</option>
												    <option value="RJ">Rajasthan</option>
												    <option value="SK">Sikkim</option>
												    <option value="TN">Tamil Nadu</option>
												    <option value="TG">Telangana</option>
												    <option value="TR">Tripura</option>
												    <option value="UP">Uttar Pradesh</option>
												    <option value="UT">Uttarakhand</option>
												    <option value="WB">West Bengal</option>
												</select>
				                         </div>
				                    <div class="row px-3"> <label class="mb-1">
				                            <h6 class="mb-0 text-sm">Password</h6>
				                    </label> <input required class="mb-4" type="password" name="password" id="password" placeholder="Enter your password"> </div>     
				                    
			                </div>
			            </div>
			        </div>	
			         <div class="row mb-3 px-3"> <button type="submit" id="sendOTP" class="btn btn-primary text-center">Submit</button> </div>
			         
			        </form>	       
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
<script type="text/javascript"> 
				//$(document).ready(function() {$("#phone").val(session.getttribute("userPhone"));})
</script>
</html>

