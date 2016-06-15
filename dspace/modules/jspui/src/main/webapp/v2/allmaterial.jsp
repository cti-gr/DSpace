<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include file="head.jsp" %>
<body>
<div id="container">

	<%@include file="header.jsp" %>

	<div id="img_container">
      <img src="img/bg_material.jpg" id="bg_img" alt="φωτογραφία φόντου">
    </div>

  <div id="content_course">  
    <div id="content-inner">
	
	<div class='class-title-container'><div class='class-title'><h1 class='blue_title'>ΟΛΟ ΤΟ ΥΛΙΚΟ</h1></div></div>
	<div class='main-course-links'>
					<div id='lesson_daizy' class='blue_daizy'>
						
						<div class='daizy_top'>	
							<div class='resources_leaf'>
								<div class='lesson_leaf inactive' id='top_left2'></div>
								<p>ψηφιακοί πόροι βιβλίων</p>
							</div>
							<div class='lesson_leaf' id='top_left1'></div>
							<div class='curriculum_leaf'>
									<div class='lesson_leaf highlights' id='top_center'></div>
									<a href='ps.jsp'>προγράμματα σπουδών</a>
							</div>
							<div class='lesson_leaf' id='top_right1'></div>
							<div class='html_books_leaf'>
								<div class='lesson_leaf highlights' id='top_right2'></div>
								<a href='allcourseshtml.jsp'>βιβλία μαθητή<br><span>μη εμπλουτισμένα html</span></a>
							</div>
						</div>
						
						
						<div class='daizy_center'>
							<div class='lesson_center'></div>
							<div class='daizy_right'>
								<div class='ebook_leaf'>
									<div class='lesson_leaf highlights' id='middle_right'></div>
									<a href='allcoursesdiadrastika.jsp'>διαδραστικά βιβλία μαθητή<br><span>εμπλουτισμένα html</span></a>	
								</div>
							</div>
						</div>
						<div class='daizy_bottom'>	
							<div class='photodentro_leaf'>
								<div class='lesson_leaf highlights' id='bottom_left2'></div>
								<a href='http://photodentro.edu.gr/jspui/simple-search?query=&amp;newQuery=yes'  target='_blank'>ΦΩΤΟΔΕΝΤΡΟ</a>
							</div>
							<div class='lesson_leaf' id='bottom_left1'></div>
							<div class='ibooks_leaf'>
									<div class='lesson_leaf inactive' id='bottom_center'></div>
									<p>βιβλία μαθητή<br><span>μη εμπλουτισμένα iBooks</span></p>
							</div>
						    <div class='lesson_leaf' id='bottom_right1'></div>
							<div class='pdfbooks_leaf'>
								<div class='lesson_leaf highlights' id='bottom_right2'></div>
								<a href='allcoursespdf.jsp'>διδακτικά πακέτα<br><span>βιβλία pdf</span></a>
							</div>
						</div>
						
					</div>
	</div>
		</div></div>

     <%@include file="footer.jsp" %>
    
</div>


<script type="text/javascript">
jQuery(document).ready(function() {
   $('.menu-wrapper a').removeClass('active');
   $('#all_menu').addClass('active');
	
  $('#lesson_daizy a').hover(
    function() {
      $(this).prev().addClass('currentleaf');
    },
    function () {
      $(this).prev().removeClass('currentleaf');
    }
  );
  $('.highlights').hover(
    function() {
      $(this).addClass('currentleaf');
      $(this).next().addClass('currentlink');
    },
    function () {
      $(this).removeClass('currentleaf');
      $(this).next().removeClass('currentlink');
    }
  );
  
});

</script>
</body></html>