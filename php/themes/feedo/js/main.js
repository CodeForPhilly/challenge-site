// define our app and dependencies (remember to include firebase!)
// demoUtils creates a unique sandbox URL for us to play in!
var app = angular.module("challengeApp", ["firebase"]);
jQuery(document).ready(function(){
app.factory('appUtils', function ($q, $http, $timeout){
	var storage = (function () {
		var uid = new Date,
		  storage,
		  result;
		try {
		  (storage = window.localStorage).setItem(uid, uid);
		  result = storage.getItem(uid) == uid;
		  storage.removeItem(uid);
		  return result && storage;
		} catch (e) {}
	}());

	function getUniqueId() {
		var id;
		if (storage) {
		  id = storage.getItem('page-key');
		}
		if (!id) {
		  id = new Firebase(EXAMPLES_URL).push().name();
		  if (storage) {
		    storage.setItem('page-key', id);
		  }
		}
		return id;
	}
})
// this factory returns a synchronized array of chat messages
app.factory("projectList", ["$firebase", '$rootScope', 
  function($firebase, $rootScope) {
     // create a reference to the Firebase where we will store our data
     
     var ref = new Firebase($rootScope.demoUrl)+'/projects';
      
     // this uses AngularFire to create the synchronized array
     return $firebase(ref);
 }
]);

app.factory("challengeChatMessages", ["$firebase", '$rootScope', 
  function($firebase, $rootScope) {
     // create a reference to the Firebase where we will store our data
     var ref = new Firebase($rootScope.demoUrl);
      
     // this uses AngularFire to create the synchronized array
     return $firebase(ref).$asArray();
  }
]);

app.factory("chatMessages", ["$firebase", '$rootScope', 
  function($firebase, $rootScope) {
     // create a reference to the Firebase where we will store our data
     var ref = new Firebase($rootScope.demoUrl);
      
     // this uses AngularFire to create the synchronized array
     return $firebase(ref).$asArray();
  }
]);

/*app.controller("ChatCtrl", ["$scope", "chatMessages",
  // we pass our new factory, chatMessages, into the controller
  function($scope, chatMessages) {
    $scope.user = "Guest " + Math.round(Math.random()*101);
      
    // we add chatMessages array to the scope for our ng-repeat
    $scope.messages = chatMessages;
      
    // called by ng-submit a method to create new messages
    $scope.addMessage = function(message) {
      // calling $add on a synchronized array is like Array.push,
      // except that it saves the changes to Firebase!
      $scope.messages.$add({from: $scope.user, content: message});
      $scope.message = "";
    };
      
    // if the messages are empty, add something for fun!
    $scope.messages.$loaded(function(messages) {
        if( messages.length === 0 ) { 
            messages.$add({from: 'Firebase Docs', content: 'Hello world!'});
        }
    });
  }
]);*/

app.controller("ProjectsCtrl", ["$scope", "projectList",
	function($scope, projectList){
		$scope.projects = projectList;
	}
]);

app.run(function($rootScope) {
	jQuery(document).ready(function(){
		$rootScope.challengeId = jQuery('#pageTitle').data('id');
		$rootScope.demoUrl = 'https://challengepost.firebaseio.com/challenges/'+$rootScope.challengeId;
	});
});

});
;(function(){

$.backstretch("themes/feedo/img/bg01.jpg", {speed: 500});



})(jQuery)

;(function(){
    /*$(".slider").noUiSlider({
        start: 40,
        connect: "lower",
        range: {
            min: 0,
            max: 100
        }
    });*/
$("[rel='tooltip']").tooltip();
})(jQuery)