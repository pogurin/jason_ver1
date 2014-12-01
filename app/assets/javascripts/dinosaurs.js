$(document).ready(function() {
	$('.dino-link').on('click', function(event) {
	  event.preventDefault();

	  var self = $(this),
		  href = self.attr('href');

	  $.ajax({
	  	url: href,
	  	type: 'GET',
	  	dataType: 'json'
	  }).done(function(data) {
	  	var renderedTemplate;
	  	if (data) { 
	  		renderedTemplate = ich.dino(data);
	  		$('#dinosaur-details').html(renderedTemplate);
	  		self.html = self.html + "(visited)" ;
	    }
	  });  
	});
});