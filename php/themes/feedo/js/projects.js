app.run(function($rootScope,$firebase) {
	jQuery(document).ready(function(){
		console.log('GO');
	});
	var ref = new Firebase('https://challengepost.firebaseio.com');
	var authData = ref.getAuth();
	if(authData){
		console.log("User ID: " + authData.uid + ", Provider: " + authData.provider);
	}else{
		ref.authWithOAuthPopup("github", function(err, authData){
			if (err) {
				if (err.code === "TRANSPORT_UNAVAILABLE") {
				  // fall-back to browser redirects, and pick up the session
				  // automatically when we come back to the origin page
				  ref.authWithOAuthRedirect("github", function(err, authData) { 
				  	ref.child('users').child(authData.uid).set(authData);
				  });
				}
			} else if (authData) {
				// user authenticated with Firebase
				ref.child('users').child(authData.uid).set(authData);
			}
		});
	}
	
});