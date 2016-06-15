<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include file="head.jsp" %>
<body>
<div id="container">

	<%@include file="header.jsp" %>

	<div id="img_container">
      <img src="img/bg.jpg" id="bg_img" alt="φωτογραφία φόντου">
    </div>

  <div id="content_course">  
    <div id="content-inner">
   
      <div class="main-course-links">
										<div class="daizy_all">
											<a href="allmaterial.jsp">
												<span>ΔΕΙΤΕ ΟΛΟ ΤΟ ΥΛΙΚΟ</span>
												<img src="img/daizyM_b.png" width="193" height="257" alt="all material daizy">
											</a>
										</div>
										
										<div class="daizy_class">
											<span>
												<span class="second">ΔΕΙΤΕ ΤΟ ΥΛΙΚΟ ANA ΤΑΞΗ</span>
												<img src="img/daizyM_r.png" width="222" height="296" alt="Εμφάνιση όλων των τάξεων">
											</span>
											<div class="frontpage-levels">
											  <div class="dimotiko">
												<span>ΔΗΜΟΤΙΚΟ</span>
												<ul>
												  <li><a href="class-main.jsp?classcode=DSDIM-A">Α'</a></li>
												  <li><a href="class-main.jsp?classcode=DSDIM-B">Β'</a></li>
												  <li><a href="class-main.jsp?classcode=DSDIM-C">Γ'</a></li>
												  <li><a href="class-main.jsp?classcode=DSDIM-D">Δ'</a></li>
												  <li><a href="class-main.jsp?classcode=DSDIM-E">Ε'</a></li>
												  <li><a href="class-main.jsp?classcode=DSDIM-F">ΣΤ'</a></li>
												</ul>
											  </div>
											  <div class="gymnasio">
												<span>ΓΥΜΝΑΣΙΟ</span>
												<ul>
												  <li><a href="class-main.jsp?classcode=DSGYM-A">Α'</a></li>
												  <li><a href="class-main.jsp?classcode=DSGYM-B">Β'</a></li>
												  <li><a href="class-main.jsp?classcode=DSGYM-C">Γ'</a></li>
												</ul>
											  </div>
											  <div class="lykeio">
												<span>ΛΥΚΕΙΟ</span>
												<ul>
												  <li><a href="class-main.jsp?classcode=DSGL-A">Α'</a></li>
												  <li><a href="class-main.jsp?classcode=DSGL-B">Β'</a></li>
												  <li><a href="class-main.jsp?classcode=DSGL-C">Γ'</a></li>
												</ul>
											  </div>
											  <div class="epal">
												<span>ΕΠΑΛ</span>
												<ul>
												  <li><a href="class-main.jsp?classcode=DSEPAL-A">Α'</a></li>
												  <li><a href="class-main.jsp?classcode=DSEPAL-B">Β'</a></li>
												  <li><a href="class-main.jsp?classcode=DSEPAL-C">Γ'</a></li>
												</ul>
											  </div>
							           		</div>
										</div>
										
										<div class="daizy_lesson">
											<a href="allcourses.jsp">
												<span>ΔΕΙΤΕ ΤΟ ΥΛΙΚΟ ANA ΜΑΘΗΜΑ</span>
												<img src="img/daizyM_y.png" width="252" height="335" alt="all courses daizy">
											</a>
										</div>
                  </div>

    </div>
  </div>

     <%@include file="footer.jsp" %>
    
</div>


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

</body></html>