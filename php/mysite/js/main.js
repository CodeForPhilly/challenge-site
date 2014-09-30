$(document).ready(function(){
	collapsedBar = false;
	document.body.style.backgroundPosition = (-window.pageXOffset / 2) + "px " + (-window.pageYOffset / 2) + "px";
	window.onscroll = function() {
        var speed = 8.0;
        
        if(window.pageYOffset > 35 && !collapsedBar){
        	collapsedBar = true;
        	//collapse bar
        	$('.navbar-nav').css('padding-top','0');
        	$('.navbar-brand').css('padding', '0');
        	$('#cyclephilly').css('top', '0');
        	$('img#navbar-logo').animate({width: "35px","padding-top":"5px"},300,function(){});

        }else if(window.pageYOffset == 0){
        	collapsedBar = false;
        	$('.navbar-brand').css('padding', '15px 15px');
        	$('#cyclephilly').css('top', '65px');
        	$('img#navbar-logo').animate({width: "100%"},300,function(){});

        }
        document.body.style.backgroundPosition = (-window.pageXOffset / speed) + "px " + (-window.pageYOffset / speed) + "px";
    }
   /*// cache the window object
   $window = $(window);
 
   $('section[data-type="background"]').each(function(){
     // declare the variable to affect the defined data-type
     var $scroll = $(this);
                     
      $(window).scroll(function() {
        // HTML5 proves useful for helping with creating JS functions!
        // also, negative value because we're scrolling upwards                             
        var yPos = -($window.scrollTop() / $scroll.data('speed')); 
         
        // background position
        var coords = '50% '+ yPos + 'px';
 
        // move the background
        $scroll.css({ backgroundPosition: coords });    
      }); // end window scroll
   });  // end section function*/
}); // close out script
