//= require vendor/jquery
//= require vendor/flickity
//= require vendor/flickity-imagesloaded

$(document).ready(function() {
	var galleries = $('.gallery');
	
	if( galleries.length ) {
		initGalleries();
	}

	function initGalleries() {
		galleries.flickity({
			cellAlign: 'left',
			imagesLoaded: true,
			wrapAround: true
		})
	}
})
