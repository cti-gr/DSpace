$(document).ready(function(){
	var  slideRight=new Boolean;
	slideRight=false;
	
	$("body").click(function(){
		if(slideRight) {
		$('#digital_school_menu').animate({left: "-170px"});
		// $('#ds_trigger').html('<p>></p>');           
		slideRight=!slideRight;
		}
	 });
	 
	$('#ds_trigger').click(function(event){
	   event.stopPropagation();
	});

 $("#ds_trigger").click(function(){
	 	slideRight=!slideRight;
	 	if(slideRight) {
    	$('#digital_school_menu').animate({left: "0px"});	
		// $('#ds_trigger').html('<p><</p>'); 
		}else {
			$('#digital_school_menu').animate({left: "-170px"});
			// $('#ds_trigger').html('<p>></p>');
			}
			
	});
});
