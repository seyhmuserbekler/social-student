/**
 * Product:        Social - Premium Responsive Admin Template
 * Version:        v1.5.1
 * Copyright:      2013 CesarLab.com
 * License:        http://themeforest.net/licenses
 * Live Preview:   http://go.cesarlab.com/SocialAdminTemplate
 * Purchase:       http://go.cesarlab.com/PurchaseSocial
 *
*/

var FormElements;

FormElements = (function($) {
  "use strict";
  /**/

  var handleChosenSelect, handleColorPicker, handleDateTimePicker, handleElasicTextArea, handleLimitTextArea, handleMaskedInput, handleSexyCheckboxesRadioButtons, handleTagsInput, handleiCheckExample, init, isRTLVersion, optionsLimitTextArea;
  optionsLimitTextArea = {
    maxCharacterSize: 200,
    originalStyle: "text-info",
    warningStyle: "text-warning",
    warningNumber: 40,
    displayFormat: "#input Characters | #left Characters Left | #words Words"
  };
  /**/

  isRTLVersion = function() {
    return $("body").hasClass('rtl');
  };
  init = function() {
    handleChosenSelect();
    handleMaskedInput();
    handleDateTimePicker();
    handleColorPicker();
    handleTagsInput();
    handleElasicTextArea();
    handleLimitTextArea();
    handleSexyCheckboxesRadioButtons();
    handleiCheckExample();
  };
  /* Chosen Select*/

  handleChosenSelect = function() {
    $(".chosen-select").chosen({
      width: '95%',
      fixed_width: false
    });
    $(".chosen-select-deselect").chosen({
      allow_single_deselect: true,
      fixed_width: false
    });
  };
  /* Masked Input*/

  handleMaskedInput = function() {
    $.mask.definitions["~"] = "[+-]";
    $("#masked-date").mask("99/99/9999");
    $("#masked-phone").mask("(999) 999-9999");
    $("#masked-phoneext").mask("(999) 999-9999? x99999");
    $("#masked-product").mask("a*-999-a999", {
      placeholder: " ",
      completed: function() {
        alert("You typed the following: " + this.val());
      }
    });
  };
  handleDateTimePicker = function() {
    $("#datetimepicker1").datetimepicker({
      format: "dd MM yyyy - hh:ii",
      isRTL: isRTLVersion()
    });
    $("#datetimepicker2").datetimepicker({
      format: "dd MM yyyy - hh:ii",
      autoclose: true,
      todayBtn: true,
      startDate: "2013-02-14 10:00",
      minuteStep: 10,
      isRTL: isRTLVersion()
    });
    $("#datetimepicker3").datetimepicker({
      format: "dd MM yyyy - HH:ii P",
      showMeridian: true,
      autoclose: true,
      todayBtn: true,
      isRTL: isRTLVersion()
    });
  };
  /* Color Picker*/

  handleColorPicker = function() {
    $("#colorpicker1").colorpicker();
    $("#colorpicker2").colorpicker();
    $("#cp3").colorpicker();
  };
  /* Tags Input*/

  handleTagsInput = function() {
    var tagit_options;
    tagit_options = {
      allowSpaces: true
    };
    $("#tags").tagsInput({
      width: "auto",
      onChange: function(elem, elem_tags) {
        var languages;
        languages = ["php", "ruby", "javascript"];
        $(".tag", elem_tags).each(function() {
          if ($(this).text().search(new RegExp("\\b(" + languages.join("|") + ")\\b")) >= 0) {
            $(this).css({
              backgroundColor: "#6d84b4",
              color: "#ffffff"
            });
            $(this).find("a").css({
              color: "#ffffff"
            });
          }
        });
      }
    });
  };
  /**/

  handleElasicTextArea = function() {
    $("#elastic-textarea").autogrow();
  };
  /**/

  handleLimitTextArea = function() {
    $("#limit-textarea").textareaCount(optionsLimitTextArea);
  };
  /* Sexy form, just checkboex and radio buttons*/

  handleSexyCheckboxesRadioButtons = function() {
    $(".sexy input").uniform();
  };

  /* iCheck Example*/

  handleiCheckExample = function() {
    $("#icheck input").iCheck({
      checkboxClass: "icheckbox_minimal-social",
      radioClass: "iradio_minimal-social",
      increaseArea: "20%"
    });
  };
  /**/
  return {
    init: init
  };
})(jQuery);
