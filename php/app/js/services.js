angular.module('starter.services', [])

/**
 * A simple example service that returns some data.
 */

.factory('HomeService', function() {
	var home = 'Home Data Here';
	
	return {
		all: function() {
			return map;
		}
	}
})
 
 .factory('ListService', function() {
	var lists = [
	{id:0,title:'Test List',description:'This is a test list.',link:'none',},
	{id:1,title:'Test List 2',description:'This is a test list.',link:'none',},
	{id:2,title:'Test List 3',description:'This is a test list.',link:'none',}
	];
	
	return {
		all: function() {
			return lists;
		}
	}
})

.factory('PeopleService', function() {
	var people = [
	  {id:0,fullname:'John Smith',age:'21',address:'123 My Address',status:'dontated',notes:'People Notes Goes Here',phone:'(215) 123-4567',},
	  {id:1,fullname:'Joe Green',age:'21',address:'123 My Address',status:'dontated',notes:'People Notes Goes Here',phone:'(215) 123-4567',},
	  {id:2,fullname:'Ashley Thomas',age:'21',address:'123 My Address',status:'dontated',notes:'People Notes Goes Here',phone:'(215) 123-4567',},
	  {id:3,fullname:'Jane Doe',age:'21',address:'123 My Address',status:'dontated',notes:'People Notes Goes Here',phone:'(215) 123-4567',},
	];
	
	return {
		all: function() {
			return people;
		},
		get: function(peopleId) {
		  // Simple index lookup
		  return people[peopleId];
		}
	}
});
