/* $(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

var working = false;
$('.login').on('submit', function(e) {
  e.preventDefault();
  if (working) return;
  working = true;
  var $this = $(this),
    $state = $this.find('button > .state');
  $this.addClass('loading');
  $state.html('Authenticating');
  setTimeout(function() {
    $this.addClass('ok');
    $state.html('Welcome back!');
    setTimeout(function() {
      $state.html('Log in');
      $this.removeClass('ok loading');
      working = false;
    }, 4000);
  }, 3000);
});

*/

$(document).ready(function() {
		
		$("#imageProfile").click(function() {
		    $("#buttonProfile").click();
		});
		$("#buttonProfile").change(function() {
				 				
		        var file =this.files[0];
		        var fr = new FileReader();
		       // fr.onload = receivedText;
		        //fr.readAsText(file);
		        
		        //$("#imageProfile").attr('src',  fr.readAsBinaryString(file)); //as bit work with base64 for example upload to server
		       	$('#profilePicture').val( fr.readAsBinaryString(file));
		        
		});
		
});
	