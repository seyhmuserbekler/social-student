/**
 * Product:        Social - Premium Responsive Admin Template
 * Version:        v1.5.1
 * Copyright:      2013 CesarLab.com
 * License:        http://themeforest.net/licenses
 * Live Preview:   http://go.cesarlab.com/SocialAdminTemplate
 * Purchase:       http://go.cesarlab.com/PurchaseSocial
 *
*/

var Login;

Login = (function($) {
  "use strict";
  /**/

  var handleBackButton, handleForgotButton, handleRegisterButton, handleRegisterUserButton, init;
  init = function() {
    handleRegisterButton();
    handleBackButton();
    handleForgotButton();
    handleRegisterUserButton();
  };
  handleRegisterButton = function() {
    $("#btn-register").click(function() {
      $(".form-login").hide();
      $(".form-register").show();
      $(".form-forgot").hide();
      $("#register-container").show();
      $("#btn-register-user").show();
      $(".form-register .alert").hide();
    });
  };
  handleBackButton = function() {
    $(".btn-back").click(function() {
      $(".form-login").show();
      $(".form-register").hide();
      $(".form-forgot").hide();
    });
  };
  handleForgotButton = function() {
    $("#link-forgot").click(function() {
      $(".form-login").hide();
      $(".form-register").hide();
      $(".form-forgot").show();
    });
  };
  handleRegisterUserButton = function() {
    $("#btn-register-user").click(function() {
      $(".form-register .alert").show();
      $("#register-container").hide();
      $("#btn-register-user").hide();
    });
  };
  return {
    init: init
  };
})(jQuery);
