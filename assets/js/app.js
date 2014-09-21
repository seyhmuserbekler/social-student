/**
 * Product:        Social - Premium Responsive Admin Template
 * Version:        v1.5.1
 * Copyright:      2013 CesarLab.com
 * License:        http://themeforest.net/licenses
 * Live Preview:   http://go.cesarlab.com/SocialAdminTemplate
 * Purchase:       http://go.cesarlab.com/PurchaseSocial
 * IMPORTANT:      This file is just for demostration
 *
*/

var App;

App = (function($) {
  "use strict";
  /* Check for device touch support
     Based on https://github.com/Modernizr/Modernizr/blob/master/feature-detects/touchevents.js
  */

  var handleNumberSignLinks, handleSidebarChat, handleSidebarOptions, handleSuperMenu, handleUiPro, init, isRTLVersion, isTouchDevice;
  isTouchDevice = function() {
    if (("ontouchstart" in window) || window.DocumentTouch && document instanceof DocumentTouch) {
      return true;
    } else {
      return false;
    }
  };
  /**/

  isRTLVersion = function() {
    return $("body").hasClass('rtl');
  };
  /**/

  init = function() {
    handleNumberSignLinks();
    handleSidebarOptions();
    handleSidebarChat();
    handleUiPro();
    handleSuperMenu();
  };
  /* Disable certain links*/

  handleNumberSignLinks = function() {
    $("[href|='#']").click(function(e) {
      e.preventDefault();
    });
  };
  /*  Sidebar Options*/

  handleSidebarOptions = function() {
    var dividersTrigger, sidebar, wraper;
    sidebar = $(".social-sidebar");
    wraper = $(".wraper");
    return dividersTrigger = $("#panel #sidebar-dividers");
  };
  /**/

  handleSidebarChat = function() {
    if (typeof chatboxManager !== 'undefined') {
      chatboxManager.init({
        sender: {
          username: "Me",
          lastname: "Me"
        }
      });
      $(".chat-users .user-list li > a").click(function(event, ui) {
        var id;
        id = $(this).attr("data-userid");
        chatboxManager.addBox(id, {
          title: "chatbox" + id,
          firstname: $(this).attr("data-firstname"),
          lastname: $(this).attr("data-lastname"),
          status: $(this).attr("data-status")
        });
        event.preventDefault();
      });
      return;
    }
  };
  /**/

  handleUiPro = function() {
    if (isTouchDevice() === false) {
      if (isRTLVersion()) {
        $.uiPro({
          leftMenu: ".rightPanel",
          threshold: 15
        });
      } else {
        $.uiPro({
          rightMenu: ".rightPanel",
          threshold: 15
        });
      }
    }
  };
  /**/

  handleSuperMenu = function() {
    return $(document).on("click", ".social-sm .dropdown-menu", function(e) {
      e.stopPropagation();
    });
  };
  return {
    init: init,
    isTouchDevice: isTouchDevice
  };
})(jQuery);
