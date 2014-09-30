// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.services' is found in services.js
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.services', 'starter.controllers'])

.config(function($stateProvider, $urlRouterProvider) {

  

  // Ionic uses AngularUI Router which uses the concept of states
  // Learn more here: https://github.com/angular-ui/ui-router
  // Set up the various states which the app can be in.
  // Each state's controller can be found in controllers.js

  $stateProvider

    // setup an abstract state for the tabs directive
    .state('tab', {
      url: "/tab",
      abstract: true,
      templateUrl: "templates/tabs.html"
    })
	
	.state('tab.home-index', {
      url: '/home',
      views: {
        'home-tab': {
          templateUrl: 'templates/home-index.html',
          controller: 'HomeIndexCtrl'
        }
      }
    })

    .state('tab.list-index', {
      url: '/lists',
      views: {
        'lists-tab': {
          templateUrl: 'templates/lists-index.html',
          controller: 'ListsIndexCtrl'
        }
      }
    })
	
	.state('tab.people-index', {
      url: '/people',
      views: {
        'people-tab': {
          templateUrl: 'templates/people-index.html',
          controller: 'PeopleIndexCtrl'
        }
      }
    })
	
	.state('tab.search-index', {
      url: '/search',
      views: {
        'search-tab': {
          templateUrl: 'templates/search-index.html',
          controller: 'SearchIndexCtrl'
        }
      }
    })
	
	.state('tab.person-add', {
      url: '/people/:peopleId',
      views: {
        'people-tab': {
          templateUrl: 'templates/people-add.html',
          controller: 'PeopleCtrl'
        }
      }
    })


  // if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise('/tab/home');

});

