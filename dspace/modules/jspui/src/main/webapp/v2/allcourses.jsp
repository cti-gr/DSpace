<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include file="head.jsp" %>
<body>
<div id="container">

	<%@include file="header.jsp" %>
	
	<div id="img_container">
      <img src="img/bg_lesson.jpg" id="bg_img" alt="φωτογραφία φόντου">
    </div>

  <div id="content_course" >  
    <div id="content-inner">
		
	
	<div class='class-title-container'><div class='class-title'><h1 class='yellow_title'>ΥΛΙΚΟ ΑΝΑ ΜΑΘΗΜΑ</h1></div></div>
	<div class='class-title-container'><div class='levels-title'><h2>ΕΠΙΛΕΞΤΕ ΤΑΞΗ ΚΑΙ ΜΑΘΗΜΑ</h2></div></div>
	<div class='lessons-list' id="level_list">
		
		</div>

		</div></div>

     <%@include file="footer.jsp" %>
    
</div>


<script type='text/javascript'>


  jQuery(document).ready(function() {
      $('.menu-wrapper a').removeClass('active');
      $('#lesson_menu').addClass('active');
	  
	    $.getJSON( "allcourses.json" , function( data ){
			$.each(data.level, function(i, lvl) {
				$('#level_list').append("<div class='accordion_column lesson' id='level"+lvl.id+"'><h3 class='edu_level'>"+lvl.value+"</h3></div>");
				$.each(data.level[i].clas, function(j, cls) {
					$('#level'+i).append("<div  class='accordion_cont'><div class='accordion'><h3 class='accordion_class'>"+cls.value+"</h3><div><ul id='course_list"+i+"_"+j+"'></ul></div></div></div>");
					$.each(data.level[i].clas[j].course, function(k, crs) {
					$('#course_list'+i+"_"+j).append("<li><a href='course-main.jsp?course="+crs.id+"' class='course-link'><span class='bgexof'></span><span class='li_wrapper'><span class='course-image'><img src='img/daizy-lesson-bg.png' alt='daizy' ></span><span class='course-name'><span class='title_wrap'><span>"+crs.value+"</span></span></span></span></a>	</li>");
					});
				});
			});
			
			
			$(function() {
				//alert(  $( '.accordion' ).size())
				$( '.accordion' ).accordion({
					active: false,
					collapsible: true,
					heightStyle: 'content'
				});
			});
			
			
		});
		 
  });
  


  

</script>
</body></html>