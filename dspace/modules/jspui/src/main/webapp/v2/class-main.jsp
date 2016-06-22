<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include file="head.jsp" %>
<body>
<div id="container">

	<%@include file="header.jsp" %>

	<div id="img_container">
      <img src="img/bg_class.jpg" id="bg_img" alt="φωτογραφία φόντου">
    </div>

	<div id="content_course" style="margin-bottom:50px;">  
		<div id="content-inner">
	
			<div class='class-title-container'>
				<div class='main-class-title'>
                    <h1 class='red_title' id="class_name"></h1>
                </div>
			</div>
			<!-- class name, class id, educational level (primary/secondary/etc) info requiered-->
			<!--check if current class has interactive/ html/ ibooks in order to activate the corresponding leaves-->
			<!--if current class has ibooks, check if the current device is ipad in order to activate the corresponding leaf--->
			
			<div class='main-course-links'>
					<div id='lesson_daizy' class='red_daizy'>
						<div class='daizy_top'>	
							<div class='resources_leaf'>
								<div class='lesson_leaf inactive' id='top_left2'></div>
								<p>ψηφιακοί πόροι βιβλίων</p>
							</div>
							<div class='lesson_leaf' id='top_left1'></div>
							<div class='lesson_leaf' id='top_center'></div>
							<div class='lesson_leaf' id='top_right1'></div>
							<div class='html_books_leaf'>
							<!--html books check-->
								<div class='lesson_leaf highlights' id='top_right2'></div>
								<a id="html_books_link" href='classcourseshtml.jsp'>βιβλία μαθητή<br><span>μη εμπλουτισμένα html</span></a>
							</div>
						</div>	
						<div class='daizy_center'>
							<div class='lesson_center'></div>
							<div class='daizy_right'>
								<div class='ebook_leaf'>
								<!--interactive books check-->
									<div class='lesson_leaf highlights' id='middle_right'></div>
									<a id="interactive_books_link" href='classcoursesdiadrastika.jsp'>διαδραστικά βιβλία μαθητή<br><span>εμπλουτισμένα html</span></a>
								</div>
							</div>
						</div>
						<div class='daizy_bottom'>	
							<div class='photodentro_leaf'>
								<div class='lesson_leaf highlights' id='bottom_left2'></div>
								<!--educational level requiered-->
								<a id="photodentro_link" href='http://photodentro.edu.gr/jspui/simple-search?query=&amp;newQuery=yes&amp;locale=el#q1=/q2=/q3=/q4=/q5=/sb=0/rd=ASC/rp=10/st=/rq=/rqc=/q6=/q7=/q8=/q11=/q9=/q10=/q12=' target='_blank'>ΦΩΤΟΔΕΝΤΡΟ</a>
							</div>
							<div class='lesson_leaf' id='bottom_left1'></div>
								<div class='ibooks_leaf'>
								<!--ibooks & device check-->
                                    <div class='lesson_leaf inactive' id='bottom_center'></div>
                                    <p>βιβλία μαθητή<br><span>μη εμπλουτισμένα iBooks</span></p>
                                </div>
							<div class='lesson_leaf' id='bottom_right1'></div>
							<div class='pdfbooks_leaf'>
								<div class='lesson_leaf highlights' id='bottom_right2'></div>
								<a  id="pdf_books_link" href='classcoursespdf.php?'>διδακτικά πακέτα<br><span>βιβλία pdf</span></a>
							</div>
						</div>
					</div>
					
                </div>
	
		</div>
	</div>

     <%@include file="footer.jsp" %>
    
</div>


<script type="text/javascript">
jQuery(document).ready(function() {
 $('.menu-wrapper a').removeClass('active');
      $('#class_menu').addClass('active');
      $('#class_submenu').css('display','inline-block');
	  
	$.urlParam = function(name){
		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		if (results==null){
		   return null;
		}
		else{
			return results[1] || 0;
		}
	}
		$('#html_books_link').attr('href','classcourseshtml.jsp?classcode='+$.urlParam('classcode'));
		$('#interactive_books_link').attr('href','classcoursesdiadrastika.jsp?classcode='+$.urlParam('classcode'));
		$('#pdf_books_link').attr('href','classcoursespdf.php?classcode='+$.urlParam('classcode'));
		

	  
	    $.ajax({
		    type: 'GET',
			url: 'http://150.140.90.114:8080/rest/communities/'+$.urlParam('classcode'),
			dataType: 'json',
			success: function(data){
				parseInputData(data);
			}
	   });
	  
	  
	
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



function parseInputData(data){
	classname=data.name.replace(/ό/g, "ο").replace(/ύ/g, "υ").replace(/ά/g, "α").replace(/έ/g, "ε").replace(/ί/g, "ι").replace(/ή/g, "η");
	$("#class_name").append(classname);
	classlvl=data.sidebarText;
	level=0;
	if (classlvl=="primary"){
	   level=2;
	}
	if (classlvl=="secondary"){
	  level=3;
	}
	if (classlvl=="high"){
	  level= 4;
	}
	if (classlvl=="epal"){
	  level=5;
	}
	if (classlvl=="epas"){
	  level=6;
	}
	$('#photodentro_link').attr('href','http://photodentro.edu.gr/lor/simple-search?query=&newQuery=yes&locale=el#q1=/q2=/q3='+level+'/q4=/q5=/sb=0/rd=ASC/rp=10/st=/rq=/rqc=/q6=/q7=/q8=/q11=/q9=/q10=/q12=');
}
	
	
</script>
</body></html>