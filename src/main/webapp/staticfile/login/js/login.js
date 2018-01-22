
jQuery(document).ready(function() {
<<<<<<< HEAD
<<<<<<< HEAD
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
   
=======
	
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
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    			$.ajax({
    			    // 请求发送方式
    			    type: 'post',
    			    // 验证文件
    			    url: 'login',
    			    // 用户输入的帐号密码
    			    data: {'userName': $("#userName").val(), 'passWord': $("#passWord").val()},
    			    // 异步，不写默认为True
    			    async: true,
    			    //请求成功后的回调
    			    success: function(data){
    			        if (data){
    			            alert('登录成功')
    			        }else{
    			            alert('帐号或密码错误');
    			        }
    			    },
    			    error: function(){
    			        alert('服务端异常');
    			    }

    			})
    		}
    	});
    	
    });
  /*  var vum=new Vue({
    	  el: "#app",
    	  data: {
    	   name:'userName',
    	   name:'passWord',
    	  },
    	  methods:{
    	    login:function () {
    	      jQuery.ajax({
    	        type: 'Get',
    	        url:"/login",
    	        error: function (data) {
    	          vum.message=data;
    	        }
    	      })
    	    }
    	  }
    	})*/
>>>>>>> branch 'master' of https://github.com/licm357/mycms.git
=======
	
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
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    			$.ajax({
    			    // 请求发送方式
    			    type: 'post',
    			    // 验证文件
    			    url: 'login',
    			    // 用户输入的帐号密码
    			    data: {'userName': $("#userName").val(), 'passWord': $("#passWord").val()},
    			    // 异步，不写默认为True
    			    async: true,
    			    //请求成功后的回调
    			    success: function(data){
    			        if (data){
    			            alert('登录成功')
    			        }else{
    			            alert('帐号或密码错误');
    			        }
    			    },
    			    error: function(){
    			        alert('服务端异常');
    			    }

    			})
    		}
    	});
    	
    });
  /*  var vum=new Vue({
    	  el: "#app",
    	  data: {
    	   name:'userName',
    	   name:'passWord',
    	  },
    	  methods:{
    	    login:function () {
    	      jQuery.ajax({
    	        type: 'Get',
    	        url:"/login",
    	        error: function (data) {
    	          vum.message=data;
    	        }
    	      })
    	    }
    	  }
    	})*/
>>>>>>> branch 'master' of https://github.com/licm357/mycms.git
    
    
});
