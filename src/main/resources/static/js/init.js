// (function($){
//   $(function(){

//     $('.button-collapse').sideNav();

//   }); // end of document ready
// })(jQuery); // end of jQuery name space
// //////////
$(document).ready(function () {
  $('.parallax').parallax();
  $(".dropdown-button").dropdown();
  $(".button-collapse").sideNav();

});
/////Angular////

angular.module("felinaApp", []).controller("Controller", function ($scope,$http) {
  $scope.word = '';
  $scope.isCaseSensitive = false;

  $scope.getPhrases = function (value) {
    $http({
      method: 'GET',
      url: 'http://localhost:8080/getFromDictionary/'+$scope.word+'&&'+ $scope.isCaseSensitive
    }).then(function successCallback(response) {
      $scope.result = response.data;    
      $scope.gotResult = true;
    });
  };

  $scope.add = function(value){
    $http({
      method: 'GET',
      url: 'http://localhost:8080/addToDictionary/'+$scope.word
    }).then(function successCallback(response) {
      if(response.data==true) Materialize.toast('Phrase added!', 1000,'rounded') ;
      else Materialize.toast('Phrase already exists on \'Database\'!', 1000,'rounded')
    }, function errorCallback(response) {
      Materialize.toast('Please Enter a Phrase!', 1000) ;
    });
  }
   
  $scope.remove = function(value){
    $http({
      method: 'GET',
      url: 'http://localhost:8080/removeFromDictionary/'+$scope.word
    }).then(function successCallback(response) {
      if(response.data) Materialize.toast('Phrase Deleted!', 1000) ;
      else Materialize.toast('Element Not deleted, ', 1000)
    }, function errorCallback(response) {
      Materialize.toast('Enter A WORD !..', 1000) 
    });
  }



});