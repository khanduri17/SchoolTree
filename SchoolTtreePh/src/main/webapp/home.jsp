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

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="#">School Online</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Features</a>
      <a class="nav-item nav-link" href="#">Pricing</a>
      <a class="nav-item nav-link" href="/signout">LOG OUT</a>
      
      
      <!-- <a class="nav-item nav-link disabled" href="#">Disabled</a> -->
    </div>
  </div>
</nav>
<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		    <div class="">
		        <div class="row d-flex">
		        	<div class="col-lg-1"></div>
		            <div class="col-lg-3">
		                <div class="card" style="width: 18rem;">
						  <div class="card-body">
						    <h5 class="card-title">Online Classes</h5>
						    <h6 class="card-subtitle mb-2 text-muted">For 1 to 8th</h6>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="card-link">Card link</a>
						    <a href="#" class="card-link">Another link</a>
						  </div>
						</div>
		            </div>
		            <div class="col-lg-2"></div>
		            <div class="col-lg-3">
		                <div class="card" style="width: 18rem;">
						  <div class="card-body">
						    <h5 class="card-title">Tution Classes</h5>
						    <h6 class="card-subtitle mb-2 text-muted">Specialied Classes</h6>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="card-link">Card link</a>
						    <a href="#" class="card-link">Another link</a>
						  </div>
						</div>
		            </div>
		            
		        </div>		       
		    </div>
		    <br>
		    <ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#">Grade 1</a>
			  </li>
			  <%for(int i=2;i<9;i++){ %>
				  <li class="nav-item">
				    <a class="nav-link" href="#content<%=i%>" id="tab<%=i%>">Grade <%=i %></a>
				  </li>
			  <%} %>
			  <li class="nav-item">
			    <!-- <a class="nav-link " href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
			  </li>
			</ul>
			<br>
			<div class="tab-content" id="myTabContent">
			<%for(int i=1;i<9;i++){ %>
			<%if(i==1){ %>
				 <div class="tab-pane fade show active" id="content<%=i %>" role="tabpanel" aria-labelledby="home-tab">
			<%} else{%>
				<div class="tab-pane fade" id="content<%=i %>" role="tabpanel" aria-labelledby="home-tab">
			<%} %> 
				  			 <div class="row">
				  			 	<div class="col-sm-3">
				  			 		<div class="card" style="width: 18rem;">
									  <img class="card-img-top" src="https://source.unsplash.com/user/c_v_r" alt="Card image cap">
									  <div class="card-body">
									    <p class="card-text"><%=i %> Shri Ram Kumar</p>
									  </div>
									</div>
				  			 	</div>
				  			 	<div class="col-sm-3">
				  			 	DAV Public School <br>
				  			 	Total Exp: 4 years <br>
				  			 	Hobbie: Abcdvbfdgjkhl;l'
				  			 	</div>
				  			 
				  			 </div>
				  </div>
			  <%} %>
			</div>
		</div>
	
<!-- 	<form method="post" >
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


 
</html>