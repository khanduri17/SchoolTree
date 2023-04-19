
<%@page import="com.schooltree.wapp.Subject"%>
<%@page import="com.schooltree.wapp.Grade"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
<style>
p,
label{
    font: 1rem 'Fira Sans', sans-serif;
}

#checkbox{
    margin: .4rem;
}

</style>

<meta charset="ISO-8859-1">
<title>School Online</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
</head>
<body>

	<div class="wrapper">
	 <form action="registerteacher" method="post">
	   <div class="container rounded bg-white mt-5 mb-5">
	      <div class="row">
	         <div class="col-md-3 border-right">
	            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
	            <input type="file" id="buttonProfile" accept="image/png, image/jpeg" style="display: none;" />
	            <img class="rounded-circle mt-5" id="imageProfile" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span></div>
	         	<input id="profilePicture" style="display: none;" name="profile_picture" />
	         </div>
	         
	         <div class="col-md-5 border-right">
	            <div class="p-3 py-5">
	               <div class="d-flex justify-content-between align-items-center mb-3">
	                  <h4 class="text-right">Profile Settings</h4>
	               </div>
	               <div class="row mt-2">
	                  <div class="col-md-6"><label class="labels">Name</label><input required type="text" name="firstname" id="firstname" value="${firstname}" class="form-control" placeholder="first name" ></div>
	                  <div class="col-md-6"><label class="labels">Surname</label><input required type="text" name="lastname" id="lastname" value="${lastname}" class="form-control" placeholder="surname"></div>
	               </div>
	               <div class="row mt-3">
	                  <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" name="phone" id="phone" value="${phone}" class="form-control" placeholder="enter phone number" readonly></div>
	                  <div class="col-md-12" id ="pass"><label class="labels">Password</label><input required type="password" name="password" id="password" ></div>
	                  
	                  <div class="col-md-12"><label class="labels">Address Line 1</label><input required type="text" name="address_line1" id="address_line1" value="${address_line1}"  class="form-control" placeholder="enter address line 1" ></div>
	                  <div class="col-md-12"><label class="labels">Address Line 2</label><input type="text" name="address_line2" id="address_line2" value="${address_line2}" class="form-control" placeholder="enter address line 2"></div>
	                  <div class="col-md-12"><label class="labels">Postcode</label><input required type="text" name="postcode" id="postcode" value="${postcode}" class="form-control" placeholder="enter address line 2" ></div>

	                  <div class="col-md-12"><label class="labels">Area</label><input type="text" class="form-control" name="area" id="area" value="${area}" placeholder="enter area" ></div>
	                  <div class="col-md-12"><label class="labels">Email ID</label><input type="text" required name="email" name="email" id="email" value="${email}"  placeholder="enter email id" ></div>
	                  <div class="col-md-12"><label class="labels">Education</label><input type="text" class="form-control" name="education" id="education" value="${education}" placeholder="Education" ></div>
	               </div>
	               <div class="row mt-3">
	                  <div class="col-md-6"><label class="labels">Country</label><input required type="text" class="form-control" name="country" id="country" value="${country}"  placeholder="Country" ></div>
	                  <div class="col-md-6"><label class="labels" >State/Region
	                  <select name="state" id="state" class="form-control">
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
	                  </label>	                  
	                 </div>
	               </div>
	               <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
	            </div>
	         </div>
	         
	         <div class="col-md-4">
	            <div class="p-3 py-5">
	               <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div>
	               <br>
	               <div class="col-md-12"><label class="labels">Experience in Teaching</label><input required type="text" name="experience" id="experience" value="${experience}" class="form-control" placeholder="experience" ></div>
	               <br>
	               <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" name="additional_details" id="additional_details" value="${additional_details}" class="form-control" placeholder="additional details" ></div>
	        	   <br>
	        	   <div class="col-md-12">
		        	<div class="container">
		        		<%ArrayList<Grade> gradeList=(ArrayList<Grade>)request.getAttribute("gradeList"); %>
						<p>Choose expertise</p>
						<% for(int i=0;i<gradeList.size();i++){ %>
							<label class="checkbox-inline">
							  <input type="checkbox" id="grade<%=i+1 %>" name="grade<%=i+1 %>" value="1"> <%=gradeList.get(i).getGrade() %> 
							</label>
						<% } %>
					</div>	               
	               <br>
	               </div>
	               <div class="col-md-12">          
	            		<div class="row">
							  <div class="col-md-3">
							  	<%ArrayList<Subject> subList=(ArrayList<Subject>)request.getAttribute("subjectList"); %>									  	
							    <select name="subject" class="mdb-select colorful-select dropdown-primary md-form" multiple="multiple">							      
							      <option value="" disabled selected>Choose your subjects</option>
							    <% for(int i=0;i<subList.size();i++){ %>
							      <option value=<%=subList.get(i).getSubject_name()%>> <%=subList.get(i).getSubject_name() %></option>							      
							    <% } %>
							    </select>						
							  </div>
           				</div>
					</div>					  
	             </div>
	         </div>   
	      </div>
	   </div>
	  </form>
	</div>
 
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="./js/main.js"></script>
<script>
	
	$(document).ready(function() {
	    if('${isProfleSet}'==='1'){	    	
	    	$('#pass').css("display","none");
	    	$("#password").removeAttr('required');
	    	$('#password').val('${password}');
	    	var gradeId;
	    	var grade='${grade}';
	   	    var grades = new Array();
	   	    grades=grade.split(',');	   	    
	   	    grades.forEach(myFunction);

		    function myFunction(item) {
		    	gradeId='grade'+item;
		    	$('#'+gradeId).prop('checked', true);
		    }
		    $("option[value|='${state}']").prop('selected',true);
		    
		    var subjects='${subjects}';
		    console.log(subjects);
		    var subjArray = new Array();		    
		    subjArray=subjects.split(',');
		    console.log(subjArray);
		    
		    subjArray.forEach(subFunction);		    
		    function subFunction(subject){
			    $('option[value|=' +  subject + ']').prop('selected',true);
		    }
		    
		    
	    }
	    	    
	});
	
</script>
</html>