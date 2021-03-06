
jQuery(document).ready(function() {

    /*
        Fullscreen background
    */
    $.backstretch([
                    "staticfile/login/img/backgrounds/2.jpg"
	              , "staticfile/login/img/backgrounds/3.jpg"
	              , "staticfile/login/img/backgrounds/1.jpg"
	             ], {duration: 3000, fade: 750});
    
    /*
        Form validation
    */
   $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.login-form').on('submit', function(e) {
    	$('.login-form').serialize() ;
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	if (event.keyCode == 13)
  	  {
    		$('.login-form').serialize() ;
  	  }
    	
    });
   

});
