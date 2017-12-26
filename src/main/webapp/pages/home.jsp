<%--
  Created by IntelliJ IDEA.
  User: Abdelilah
  Date: 12/26/17
  Time: 03:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <title>Project Felina</title>

    <!-- This is the bit that needs Internet Connection, :(  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- End Of that 'bit'-->
    <link href="<c:url value="css/materialize.css" />" rel="stylesheet" media="screen,projection" />
    <link href="<c:url value="css/style.css" />" rel="stylesheet" media="screen,projection" />
</head>

<body>
<nav class="transparent z-depth-2" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="#" class="black-text light brand-logo">
            <i class="material-icons">add_shopping_cart</i>Felina</a>
        <ul class="right hide-on-med-and-down">
            <li>
                <a class="black-text active" href="#">in Angular 4
                    <span class="new badge red " data-badge-caption="Coming Soon"></span>
                </a>
            </li>
        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li>
            <a class="black-text" href="#">in Angular 4
                <span class="new badge red" data-badge-caption="Coming Soon"></span>
            </a>
            </li>
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse">
            <i class="material-icons black-text">menu</i>
        </a>
    </div>
</nav>
<div class="parallax-container">
    <div class="section no-pad-bot" id="index-banner">
        <div class="container hide-on-small-only ">
            <br/>
            <br/>
            <div class="row center">
                <h5 style="font-weight:200" class="center header col s12 light white-text">
                    <em class="black-text">Night work, while taking the road to Casablanca ;)</em><br/>
                    <span class="black-text center">Time: 3~4 hours</span>
                </h5>
            </div>
        </div>
    </div>
    <div class="parallax">
        <img src="pics/wallpaper.jpg"/>
    </div>
</div>
<div class="container" ng-app="felinaApp" ng-controller="Controller">
    <div class="section">
        <div class="row center">
            <div class="col s12 m6 offset-m3">
                <div class="card blue-grey lighten-3">
                    <div class="card-content white-text">
                        <span class="card-title black-text ">Hello</span>
                        <br/>
                        <div class="row">
                            <div class="input-field">
                                <input class="heavy black-text" ng-model="word" id="word" type="text"/>
                                <label class="light black-text" for="word">Search/Delete a Word</label>
                                <a ng-click="add(word)" class="btn-floating right btn-large waves-effect waves-light teal">
                                    <i class="material-icons">add</i>
                                </a>
                                <a ng-click="remove(word)" class="btn-floating left btn-large waves-effect waves-light red">
                                    <i class="material-icons">remove</i>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <p class="center">
                                <input  ng-model="isCaseSensitive" type="checkbox" id="test5" />
                                <label class="black-text" for="test5">Case Sensitive</label>
                            </p>
                        </div>
                        <div class="row center">
                            <button ng-click="getPhrases(word)" class="waves-effect waves-light blue btn-large">Send
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row ">

            <table ng-show="gotResult">
                <thead>
                <tr>
                    <th class="center">Exact/Alikes</th>
                </tr>
                </thead>
                <tbody>
                <tr class="center" ng-repeat="phrase in result">
                    <td>{{phrase}}</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>

<footer class="page-footer brown lighten-3">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="black-text">Notes I shall add</h5>
                <p class="black-text">This project is a result of the solo work i have accomplished without following any given tutorial nor using any
                    given template</p>
            </div>
            <div class="col l3 s12 push-l2 push-m2">
                <h5 class="black-text">Connect With Me</h5>
                <ul>
                    <li>
                        <a class="waves-effect waves-light indigo darken-4 btn-floating  ">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a class="waves-effect waves-light grey darken-2 btn-floating ">
                            <i class="fa fa-github"></i>
                        </a>
                        <a class="waves-effect waves-light blue darken-3 btn-floating ">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Made by
            <a class="orange-text text-lighten-3" href="#">Abdelilah</a>
        </div>
    </div>
</footer>


<!--  Scripts-->
<script src="<c:url value="js/jquery-3.2.1.min.js" />" ></script>
<script src="<c:url value="js/angular.min.js" />" ></script>
<script src="<c:url value="js/init.js" />" ></script>
<script src="<c:url value="js/materialize.min.js" />" ></script>


</body>

</html>