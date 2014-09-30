jQuery(window).load(function(){

	
	jQuery('.galleryItemLink').click(function (event) {
			event.preventDefault();	
			
			var ImageURL = jQuery(this).attr('href');
			var ImageWidth = jQuery(this).attr('rel');
			
			
			jQuery('#GalleryPopup').css('marginLeft',-parseInt(ImageWidth/2));
			jQuery('#GalleryPopup').css('width',ImageWidth);
			jQuery('#GalleryPopup #GalleryLoadArea').html('<img src="'+ImageURL+'" />');
			jQuery('#GalleryPopup').fadeIn('medium');
			jQuery('#GalleryPageShade').fadeIn('medium');
			
			
	});
	
	jQuery('#GalleryPageShade').click(Close_Popup);
	jQuery('.PopupClose').click(Close_Popup);

});


function Close_Popup() {
	
	jQuery('#GalleryPopup').fadeOut('medium');
	jQuery('#GalleryPageShade').fadeOut('medium');
	
}
 