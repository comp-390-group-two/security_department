$(document).ready(function(){
	
	$('#content').load('AdminTemplate.jsp');
	
	//handle menu clicks
	$('ul#udnav li a').click(function(){
		var page = $(this).attr('href');
		
		$('#content').load(page+'.jsp');
		
		return false;
	});
});