/*** background image fit to window ****/

$(function() { 
  
		var a=0;
			var theWindow        = $(window),
			    $bg              = $("#bg_img"),
			    aspectRatio      =0;
			var open = false;
			    			    		
			function resizeBg() {
				aspectRatio      = $bg.width() / $bg.height();
				
				if ( (theWindow.width() / (theWindow.height())) < aspectRatio ) {
				    $bg
				    	.removeClass()
				    	.addClass('bgheight');
				} else {
				    $bg
				    	.removeClass()
				    	.addClass('bgwidth');
				}
							
			}
			
			
			
			function setupMenuButton() {
					$("#small_menu").click(function(e) {
						e.preventDefault();
						
						/*if small menu expanded*/
						if (open) {
							/*collapse small menu */
							$(".main_menu").fadeOut();
							$(".epipeda").fadeOut();
							$("#small_menu").toggleClass("selected");
							/*$('.menu-wrapper').css('overflow','hidden');*/
							$('.menu-wrapper').css('height','auto');
						}
						/*if small menu collapsed*/	
						else {
							/*expand small menu */
							$(".main_menu").fadeIn();
							$('.epipeda_small').hide();
							
							$("#small_menu").toggleClass("selected");
							if( $('.menu-wrapper').height()>=$(window).height()-50 ){
								$('.menu-wrapper').css('height',$(window).height()-50 + 'px');	
								$('.menu-wrapper').css('overflow','scroll');	
							}else{
								/*$('.menu-wrapper').css('overflow','hidden');*/
								$('.menu-wrapper').css('height','auto');
							}
						}
						open = !open;
					});
					
				
   		}
		
		function checkMenuButton() {
					
					/*if large menu*/
					if( $('#small_menu').is(':hidden')){
						$(".main_menu").fadeIn();
						$('.epipeda_small').hide();
						$('.menu-wrapper').css('height','auto');
						$('.menu-wrapper').css('overflow','visible');
					}
						
					/*if small menu collapsed*/	
					else if($('#small_menu').is(':visible')  && !open) {
							$('.epipeda').hide();
							$('#class_menu').removeClass('active_submenu');
							$(".main_menu").hide();
							$('.menu-wrapper').css('height','auto');
							$('.menu-wrapper').css('overflow','visible');
					}
					/*if small menu expanded*/
					else if($('#small_menu').is(':visible') && open) {
							$('.epipeda').hide();
							$('#class_menu').removeClass('active_submenu');
							if( $('.menu-wrapper').height()>=$(window).height()-$('#header').height() ){
								$('.menu-wrapper').css('height',$(window).height()-$('#header').height() + 'px');	
								$('.menu-wrapper').css('overflow','scroll');	
							}else{
								$('.menu-wrapper').css('height','auto');
								$('.menu-wrapper').css('overflow','visible');
							}
					}
   		}
	
	
		function setFooter() {
			var minheight=$(window).height()-$('#header').innerHeight()-$('#footer').innerHeight()-10;
			$('#content_course').css('min-height',minheight);	
		}
		
		
		$("body").click(function(){
			$('.epipeda').fadeOut(200);
			$('#class_menu').removeClass('active_submenu');
		 });
		
		$('#class_menu').click(function(event){
		   event.stopPropagation();
		});
		
		$('.epipeda').click(function(event){
		   event.stopPropagation();
		});
		
		
		/****   on click ana taksi menu click *********/	
			$('#class_menu').click(function() {
				
				if($('#small_menu').is(':hidden')){
					$('.epipeda_small').hide();
					$('.epipeda').fadeToggle(200).toggleClass("visible");
				}else{
					$('.epipeda').hide();
					$('.epipeda_small').slideToggle(200).toggleClass("visible");
					}
			$('#class_menu').toggleClass('active_submenu');
			 });
		/******    ******/	

	    $('.highlights').click(function(){
	      var url = $(this).next().attr('href');
	      var target = $(this).next().attr('target');
	      if (target=='_blank') {
	      	window.open(url,'_blank');
	      }
	      else {
	      	window.location = url;
	      }
	    });
		

		setupMenuButton();
		setFooter();
		resizeBg();	
					
		$('#bg_img').load(resizeBg);	
		
					
		theWindow.resize(function() {
				resizeBg();
				checkMenuButton();
				setFooter();
			}).trigger("resize");



			
	});
