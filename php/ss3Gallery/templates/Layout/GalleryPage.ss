
    
    	<div class="typography">
        
            <h2>$Title</h2>
            $Content
            $Form
           
           <div id="galleryArea">
           <% control getGalleryImages %>
           <div class="galleryItem">
           		<% control $Image.SetRatioSize(700,500) %>
                <a class="galleryItemLink" href="$URL" rel="$Width"><% end_control %>
                <div class="imgLabel">$Title</div>
            	$Image.SetSize(100,100)
                </a>
           </div>
           <% end_control %>
           	<div class="clear"></div>
            
            <div id="GalleryPageShade" style="display: none;"></div>
            <div id="GalleryPopup" style="display: none;">
            <p class="PopupClose">Close</p>
                <div id="GalleryLoadArea"></div>	
            </div>
    
    
			</div>

		</div>


