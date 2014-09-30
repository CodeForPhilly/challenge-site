angular.module('starter.controllers', [])


// A simple controller that fetches a list of data from a service
.controller('HomeIndexCtrl', function($scope, HomeService) {
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(39.952335,-75.16378900000001),
      zoom: 16,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map"),
        mapOptions);
    $scope.map = map;
  }
google.maps.event.addDomListener(window, 'load', initialize);  initialize();
})

.controller('ListsIndexCtrl', function($scope, ListService) {
	$scope.lists = ListService.all();
	$scope.rightButtons = [
		{type: 'button-positive',content: '<i class="icon ion-plus-round"></i>',tap: function(e) {
			alert("Add List Modal");
		}}
	]
})

.controller('PeopleIndexCtrl', function($scope, PeopleService) {
	$scope.peoples = PeopleService.all();
	$scope.rightButtons = [
		{type: 'button-positive',content: '<i class="icon ion-person-add"></i>',tap: function(e) {
			alert("Add Person Modal");
		}}
	]
})

.controller('PeopleCtrl', function($scope, $stateParams, PeopleService) {
	$scope.people = PeopleService.get($stateParams.peopleId);
})

.controller('SearchIndexCtrl', function($scope) {
	$scope.rightButtons = [
		{type: 'button-positive',content: '<i class="icon ion-search"></i>',tap: function(e) {
			alert("Search Clicked!");
		}}
	]
})


// A simple controller that shows a tapped item's data
.controller('PetDetailCtrl', function($scope, $stateParams, PetService) {
  // "Pets" is a service returning mock data (services.js)
  $scope.pet = PetService.get($stateParams.petId);
});
