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

angular.module("felinaApp", []).controller("Controller", function ($scope, $http) {
        $scope.word = '';
        $scope.isCaseSensitive = false;

        $scope.getPhrases = function (value) {
            $http({
                method: 'GET',
                url: 'getFromDictionary/' + $scope.word + '&&' + $scope.isCaseSensitive
            }).then(function successCallback(response) {
                $scope.result = response.data;
                if ($scope.result.length == 0) Materialize.toast('Item non existent', 1000);
                $scope.gotResult = true;
            });
        };
        $scope.add = function (value) {
            if ($scope.word.length != 0) {
                $http({
                    method: 'GET',
                    url: '/addToDictionary/' + $scope.word
                }).then(function successCallback(response) {
                    if (response.data) Materialize.toast('Phrase added!', 800, 'rounded');
                    else Materialize.toast('Phrase already exists on \'Database\'!', 800, 'rounded')
                }, function errorCallback(response) {
                    Materialize.toast('Uknown Error !', 800);
                });
            }
            else Materialize.toast('Please Enter a Phrase!', 800);


        }

        $scope.remove = function (value) {
            if ($scope.word.length != 0) {
                $http({
                    method: 'GET',
                    url: 'removeFromDictionary/' + $scope.word
                }).then(function successCallback(response) {
                    if (response.data) Materialize.toast('Phrase Deleted!', 800);
                    else Materialize.toast('Element Not deleted, ', 1000)
                }, function errorCallback(response) {
                    Materialize.toast('Uknown Error !', 800);
                });
            }
            else {
                Materialize.toast('Please Enter a Phrase!', 800);
            }
        }

        $scope.soon = function (value) {
            Materialize.toast('Soon :) ..', 1500, 'rounded');
        }


    }
);