package com.schooltree.wapp;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import com.schooltree.service.VerificationResult;

@Controller
public class STController {
	
	  HttpSession session;
	
	  @Autowired
	  PhoneverificationService phonesmsservice;
	  @Autowired
	  TeacherRepository teacherRepo;
	  @Autowired
	  UserRepository userRepo;
	  @Autowired
	  SubjectsRepository subsRepository;
	  @Autowired
	  GradeRepository gradeRepository;
	  
	  private static final Logger log = Logger.getLogger(STController.class.getName());
	  
	  @PostMapping("/sendotp")
	  public ResponseEntity < String > sendotp(@RequestParam("phone") String phone) {
	    if (userRepo.existsByPhone(phone) || teacherRepo.existsByPhone(phone)) {
	      log.info("user present :: " + phone);
	      return new ResponseEntity < > ("alreadyexists", HttpStatus.BAD_REQUEST);
	    }
	    VerificationResult result = phonesmsservice.startVerification("+91" + phone);
	    
	    if (result.isValid()) {
	      return new ResponseEntity < > ("Otp Sent..", HttpStatus.OK);
	    }
	    return new ResponseEntity < > ("Otp failed to sent..", HttpStatus.BAD_REQUEST);
	  }
	
	  @PostMapping("/verifyotp")
	  public ResponseEntity < String > sendotp(@RequestParam("phone") String phone, @RequestParam("otp") String otp, @RequestParam("userType") String userType, HttpServletRequest request) {
	    HttpSession session = request.getSession();
 	    VerificationResult result = phonesmsservice.checkverification("+91" + phone, otp);
 	   
	    if (result.isValid()) {
	      session.setAttribute("userPhone", phone);
	      return new ResponseEntity < > ("Your number is Verified", HttpStatus.OK);
	    }
	
	    return new ResponseEntity < > ("Otp incorrect", HttpStatus.OK);
	  }
	
	  @GetMapping("/signup")
	  public String register(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    if (null != session.getAttribute("userId")) {	    	
	      return "redirect:/home.jsp";
	    } else {
	      return "signup.jsp";
	    }
	    
	  }
	
	
	  @GetMapping("/teacher_login")
	  public String teacherLogin(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  if (null != session.getAttribute("userId")) {
		    	session.removeAttribute("userPhone");
		        return "redirect:/teacher_home";
		    } else {
		      return "teacher_login.jsp";
		    }
	  }
	  
	  @GetMapping("/teacher_signup")
	  public String teacherSignup(HttpServletRequest request) {
		    HttpSession session = request.getSession();
		    if (null != session.getAttribute("userId")) {
		        return "redirect:/teacher_home";
		    } else {
		      return "teacher_signup.jsp";
		    }
	  }
	
	  @GetMapping("/teacher_home")
	  public String teacherHome(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		    if (null != session.getAttribute("userId")) {
		        return "teacher_home.jsp";
		    } else {
		      return "redirect:/teacher_login";
		    }
	  }
	
	  @GetMapping("/teacher_profile")
	  public String teacherpProfile(HttpServletRequest request,ModelMap mv) {
	    HttpSession session = request.getSession();
	     
	    if (session.getAttribute("userPhone") != null ) {
	      mv.addAttribute("phone",session.getAttribute("userPhone"));
	      return "teacher_profile.jsp";
	    }else if(session.getAttribute("userId") != null) {	    	
	    	
	    	List<Subject> subjectList=subsRepository.findAll();
	    	List<Grade> gradeList=gradeRepository.findAll();
	    	mv.addAttribute("gradeList",gradeList);
	    	mv.addAttribute("subjectList",subjectList);
	    	mv.addAttribute("phone",teacherRepo.getById((int)session.getAttribute("userId")).getPhone());
	    	mv.addAttribute("firstname",teacherRepo.getById((int)session.getAttribute("userId")).getFirstname());
	    	mv.addAttribute("lastname",teacherRepo.getById((int)session.getAttribute("userId")).getLastname());
	    	mv.addAttribute("address_line1",teacherRepo.getById((int)session.getAttribute("userId")).getAddress_line1());
	    	mv.addAttribute("address_line2",teacherRepo.getById((int)session.getAttribute("userId")).getAddress_line2());
	    	mv.addAttribute("postcode",teacherRepo.getById((int)session.getAttribute("userId")).getPostcode());
	    	mv.addAttribute("area",teacherRepo.getById((int)session.getAttribute("userId")).getArea());
	    	mv.addAttribute("email",teacherRepo.getById((int)session.getAttribute("userId")).getEmail());
	    	mv.addAttribute("education",teacherRepo.getById((int)session.getAttribute("userId")).getEducation());
	    	mv.addAttribute("country",teacherRepo.getById((int)session.getAttribute("userId")).getCountry());
	    	mv.addAttribute("experience",teacherRepo.getById((int)session.getAttribute("userId")).getExperience());
	    	mv.addAttribute("additional_details",teacherRepo.getById((int)session.getAttribute("userId")).getAdditional_details());
	    	mv.addAttribute("password",teacherRepo.getById((int)session.getAttribute("userId")).getPassword());
	    	mv.addAttribute("isProfleSet","1");
	    	mv.addAttribute("subjects",teacherRepo.getById((int)session.getAttribute("userId")).getSubjects());
	    	mv.addAttribute("grade",teacherRepo.getById((int)session.getAttribute("userId")).getClassesToTeach());
	    	mv.addAttribute("state",teacherRepo.getById((int)session.getAttribute("userId")).getState());
	    	mv.addAttribute("subjects",teacherRepo.getById((int)session.getAttribute("userId")).getSubjects());
	    	return "teacher_profile.jsp";
	    }
	    else {
	      return "redirect:/teacher_login";
	    }
	    
	
	  }
	
	  @GetMapping("/register")
	  public String registeruser(HttpServletRequest request) {
		//System.out.println(userType);
	    HttpSession session = request.getSession();
	    if (null != session.getAttribute("userPhone")) {	    	
	        return "register.jsp";
	    } else if (null != session.getAttribute("userId")) {
	      return "home.jsp";
	    } else {
	      return "redirect:/signup";
	    }
	  }
	
	  @GetMapping("/home")
	  public String home(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    if (null != session.getAttribute("userId")) {
	        return "home.jsp" ;
	    } else {
	      return "redirect:/signin";
	    }
	  }
	
	  @PostMapping("/registernewuser")
	  public RedirectView post_registeruser(User user, HttpServletRequest request) {
	    HttpSession session = request.getSession();	    
	    userRepo.save(user);
	    session.setAttribute("userId",user.getId());
	    log.info(user.getId() + user.getFirstname());
	    RedirectView redirectView = new RedirectView();
	    redirectView.setUrl("home");

	    return redirectView;
	    //return "home.jsp";
	  }
	
	  @PostMapping("/checkuser")
	  public String checksignin(ModelMap mv,@RequestParam("phone") String phone, @RequestParam("password") String password,
			  @RequestParam("userType") String userType,   HttpServletRequest request) {
		  		  Boolean userExsist=false;
		  		  session = request.getSession();
		  		  
				  if(userType.equals("1")) {
					    Teacher teacher = teacherRepo.findByPhone(phone);
					    if(teacher!=null) {
					    	userExsist=true;
						    if(teacher.getPassword().equals(password)) {
						        
						        session.setAttribute("userId", teacher.getId());
						        return "redirect:/teacher_home";
						      }else {
						    	  
						        mv.addAttribute("phone",phone);
						        mv.addAttribute("error", "Invalid Username/Password");
						        return "teacher_login.jsp";
						      }
					    } 
				  }else {
					    User user = userRepo.findByPhone(phone);
					    if(null!=user) {
					    	userExsist=true;
						    if (user.getPassword().equals(password)) {
						        session.setAttribute("userId", user.getId());
						        return "redirect:/home";
						    } else {
						        mv.addAttribute("phone", phone);
						        mv.addAttribute("error", "Invalid Username/Password");
						        return "signin.jsp";
						    }
					    }
				  }
			
		  		 if(!userExsist) {
		  			 mv.addAttribute("phone", phone);
		  			 mv.addAttribute("error", "Invalid Username/Password");
		  			  if(userType.equals("1")) {
		  				  return "teacher_login.jsp";
		  			  }else {
		  				  return "signin.jsp";
		  			  }
		  		  }else {
		  			  return "signin.jsp";
		  		  }
		  		 
		  		
	  }
	
	  @GetMapping("/signin")
	  public String signin(HttpServletRequest request) {
	    session = request.getSession();
	    if (null != session.getAttribute("userId")) {
	    	session.removeAttribute("userPhone");
	        return "home.jsp";
	    } else {
	      return "signin.jsp";
	    }
	  }
	  
	  @GetMapping("/signout")
	  public String signout(HttpServletRequest request) {
	    session = request.getSession();
	    session.removeAttribute("userId");
	    return "redirect:/signin";
	  }
	
	  @PostMapping("/registerteacher")
	  public String registerTeacher(Teacher teacher, HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    
	    //getgrade
	    String grade="";
	    for(int i=1;i<9;i++) {
	    	if( null!= request.getParameter("grade"+i) &&  request.getParameter("grade"+i).equals("1")) {
	    		grade=grade+ i+",";
	    	}	    	
	    }
	    if(grade.length()>1) {
	    	grade=grade.substring(0,grade.length()-1);
	    	
	    }
	    teacher.setClassesToTeach(grade);	    
	    String subjects[]=request.getParameterValues("subject");	    
	    String subj="";
	    
	    for(int i=0;i<subjects.length;i++) {
	    	subj+=subjects[i]+",";
	    }
    	subj=subj.substring(0,subj.length()-1);
	    teacher.setSubjects(subj);
	    
	    
	    //addTeacher
	    if(null!=session.getAttribute("userId")) {
	    	teacher.setId(Integer.parseInt(session.getAttribute("userId").toString()));
	    	teacherRepo.save(teacher);
	    }else {
	    	Teacher savedTeacher= teacherRepo.save(teacher);
	    	session.setAttribute("userId", savedTeacher.getId());
	    }
	    return "redirect:/teacher_home";
	
	  }
	  
	  @PostMapping("/meeting")
	  public String meeting() {
		  return "meeting.jsp";
	  }
	  

}