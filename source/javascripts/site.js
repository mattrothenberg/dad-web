//= require vendor/jquery
//= require vendor/flickity
//= require vendor/flickity-imagesloaded
//= require vendor/lazyload.min

$(document).ready(function() {
	var galleries = $('.gallery');
	
	if( galleries.length ) {
		initGalleries();
	} else {
		var myLazyLoad = new LazyLoad();
	}

	function initGalleries() {
		galleries.flickity({
			cellAlign: 'left',
			imagesLoaded: true,
			lazyLoad: true,
			wrapAround: true
		})
	}
})
