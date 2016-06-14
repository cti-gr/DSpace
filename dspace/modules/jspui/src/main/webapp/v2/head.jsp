<%@ page contentType="text/html; charset=UTF-8" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ebooks</title>
<link href="css/theme.css" rel="stylesheet" type="text/css">
<link href="css/theme-itye.css" rel="stylesheet" type="text/css">
<link href="css/screen.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/sidebar.css" rel="stylesheet" type="text/css">
<link href="css/print.css" rel="stylesheet" type="text/css" media="print">
<script type="text/javascript" defer="" async="" src="js/piwik.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/side_menu.js"></script>
<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/colorbox.css">
<script type="text/javascript" src="js/jquery.colorbox-min.js"></script>
<script type="text/javascript">
                      $(document).ready(function() {
                          $(".colorboxframe").colorbox({
                                  innerWidth  : 680,
                                  innerHeight : 380,
                                  iframe      : "true",
                                  scrolling   : "false",
                                  opacity     : 0.8,
                                  
                                  current     : "πολυμέσο {current} από {total}"
                         });
                         $(".colorbox").colorbox({
                                  minWidth    : 300,
                                  minHeight   : 200,
                                  maxWidth    : "100%",
                                  maxHeight   : "100%",
                                  scrolling   : "false",
                                  opacity     : 0.8,
                                  photo       : "true",
                                  
                                  current     : "πολυμέσο {current} από {total}"
                         });
                      });
                      </script>
<script type="text/javascript">
  jQuery(document).ready(function() {
    $('.highlights').click(function(){
      var url = $(this).next().attr('href');
      window.location = url;
    });
	
  $('.daizy_all').find('a').hover(
   function () {
	  $(this).find('img').attr('src', 'img/daizyM_b_over.png');
   },
    function () {
	  $(this).find('img').attr('src', 'img/daizyM_b.png');
   }
  );
  

	$('.daizy_class').find('span').hover(
   function () {
	  $(this).find('img').attr('src', 'img/daizyM_r_over.png');
   },
    function () {
	  $(this).find('img').attr('src', 'img/daizyM_r.png');
   }
  );

  $('.daizy_lesson').find('a').hover(
   function () {
	  $(this).find('img').attr('src', 'img/daizyM_y_over.png');
   },
    function () {
	  $(this).find('img').attr('src', 'img/daizyM_y.png');
   }
  );

	$('.daizy_class').click(function() {
			$('.frontpage-levels').fadeToggle(200).toggleClass('visible');
  });
  
	  $('body').click(function(){
			$('.frontpage-levels').fadeOut(200);
		 });
		
		$('.daizy_class').click(function(event){
		   event.stopPropagation();
		});
		
		$('.frontpage-levels').click(function(event){
		   event.stopPropagation();
		});
  
});
</script>

<!--allcourses-->
<link rel='stylesheet' href='css/accordion-jquery-ui.css'>
 <script src='js/jquery-ui.min.js' type='text/javascript'></script>
 <!--/allcourses-->

</head>
