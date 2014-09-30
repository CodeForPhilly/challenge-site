;(function(){

			// Menu settings
			$('#menuToggle, .menu-close').on('click', function(){
				$('#menuToggle').toggleClass('active');
				$('body').toggleClass('body-push-toleft');
				$('#theMenu').toggleClass('menu-open');
			});
			vendorActive = setInterval(function(){
				$('#hot-image').fadeToggle(1500, "swing", function(){

				});
			},1800)
			$('#hot-image').fadeToggle(1500, "swing", function(){

			});

			$.stellar({
				horizontalScrolling: false,
				verticalOffset: 540
			});


})(jQuery)