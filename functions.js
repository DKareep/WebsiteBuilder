//@ sourceMappingURL=functions.map
// Generated by CoffeeScript 1.6.1
(function() {

  $('.device').on("mouseenter", function() {
    return $(this).addClass("rt");
  });

  $('.device').on("mouseleave", function() {
    return $(this).removeClass("rt");
  });

  $('.device').on("mousedown", function() {
    $(this).addClass("device_active");
    return $(this).siblings().removeClass("device_active");
  });

  $('.stct').on("mouseenter", function() {
    return $(this).addClass("rt");
  });

  $('.stct').on("mouseleave", function() {
    return $(this).removeClass("rt");
  });

  $('.stct').on("mousedown", function() {
    $(this).addClass("device_active");
    return $(this).siblings().removeClass("device_active");
  });

  $('#up_top').mousedown(function() {
    $('#horizontal_up_top').css("backgroundColor", "teal");
    return $('#vertical_up_top').css("backgroundColor", "teal");
  });

  $('#up_top').mouseup(function() {
    $('#horizontal_up_top').css("backgroundColor", "#A2A2A2");
    return $('#vertical_up_top').css("backgroundColor", "#A2A2A2");
  });

  $('#down_top').mousedown(function() {
    return $('#horizontal_down_top').css("backgroundColor", "teal");
  });

  $('#down_top').mouseup(function() {
    return $('#horizontal_down_top').css("backgroundColor", "#A2A2A2");
  });

  $('#up_right').mousedown(function() {
    $('#horizontal_up_right').css("backgroundColor", "teal");
    return $('#vertical_up_right').css("backgroundColor", "teal");
  });

  $('#up_right').mouseup(function() {
    $('#horizontal_up_right').css("backgroundColor", "#A2A2A2");
    return $('#vertical_up_right').css("backgroundColor", "#A2A2A2");
  });

  $('#down_right').mousedown(function() {
    return $('#horizontal_down_right').css("backgroundColor", "teal");
  });

  $('#down_right').mouseup(function() {
    return $('#horizontal_down_right').css("backgroundColor", "#A2A2A2");
  });

  $('#up_bottom').mousedown(function() {
    $('#horizontal_up_bottom').css("backgroundColor", "teal");
    return $('#vertical_up_bottom').css("backgroundColor", "teal");
  });

  $('#up_bottom').mouseup(function() {
    $('#horizontal_up_bottom').css("backgroundColor", "#A2A2A2");
    return $('#vertical_up_bottom').css("backgroundColor", "#A2A2A2");
  });

  $('#down_bottom').mousedown(function() {
    return $('#horizontal_down_bottom').css("backgroundColor", "teal");
  });

  $('#down_bottom').mouseup(function() {
    return $('#horizontal_down_bottom').css("backgroundColor", "#A2A2A2");
  });

  $('#up_left').mousedown(function() {
    $('#horizontal_up_left').css("backgroundColor", "teal");
    return $('#vertical_up_left').css("backgroundColor", "teal");
  });

  $('#up_left').mouseup(function() {
    $('#horizontal_up_left').css("backgroundColor", "#A2A2A2");
    return $('#vertical_up_left').css("backgroundColor", "#A2A2A2");
  });

  $('#down_left').mousedown(function() {
    return $('#horizontal_down_left').css("backgroundColor", "teal");
  });

  $('#down_left').mouseup(function() {
    return $('#horizontal_down_left').css("backgroundColor", "#A2A2A2");
  });

  /*=====================================================================
  */


  $('#up_pad_top').mousedown(function() {
    $('#pad_horizontal_up_top').css("backgroundColor", "teal");
    return $('#pad_vertical_up_top').css("backgroundColor", "teal");
  });

  $('#up_pad_top').mouseup(function() {
    $('#pad_horizontal_up_top').css("backgroundColor", "#A2A2A2");
    return $('#pad_vertical_up_top').css("backgroundColor", "#A2A2A2");
  });

  $('#down_pad_top').mousedown(function() {
    return $('#pad_horizontal_down_top').css("backgroundColor", "teal");
  });

  $('#down_pad_top').mouseup(function() {
    return $('#pad_horizontal_down_top').css("backgroundColor", "#A2A2A2");
  });

  $('#up_pad_right').mousedown(function() {
    $('#pad_horizontal_up_right').css("backgroundColor", "teal");
    return $('#pad_vertical_up_right').css("backgroundColor", "teal");
  });

  $('#up_pad_right').mouseup(function() {
    $('#pad_horizontal_up_right').css("backgroundColor", "#A2A2A2");
    return $('#pad_vertical_up_right').css("backgroundColor", "#A2A2A2");
  });

  $('#down_pad_right').mousedown(function() {
    return $('#pad_horizontal_down_right').css("backgroundColor", "teal");
  });

  $('#down_pad_right').mouseup(function() {
    return $('#pad_horizontal_down_right').css("backgroundColor", "#A2A2A2");
  });

  $('#up_pad_bottom').mousedown(function() {
    $('#pad_horizontal_up_bottom').css("backgroundColor", "teal");
    return $('#pad_vertical_up_bottom').css("backgroundColor", "teal");
  });

  $('#up_pad_bottom').mouseup(function() {
    $('#pad_horizontal_up_bottom').css("backgroundColor", "#A2A2A2");
    return $('#pad_vertical_up_bottom').css("backgroundColor", "#A2A2A2");
  });

  $('#down_pad_bottom').mousedown(function() {
    return $('#pad_horizontal_down_bottom').css("backgroundColor", "teal");
  });

  $('#down_pad_bottom').mouseup(function() {
    return $('#pad_horizontal_down_bottom').css("backgroundColor", "#A2A2A2");
  });

  $('#up_pad_left').mousedown(function() {
    $('#pad_horizontal_up_left').css("backgroundColor", "teal");
    return $('#pad_vertical_up_left').css("backgroundColor", "teal");
  });

  $('#up_pad_left').mouseup(function() {
    $('#pad_horizontal_up_left').css("backgroundColor", "#A2A2A2");
    return $('#pad_vertical_up_left').css("backgroundColor", "#A2A2A2");
  });

  $('#down_pad_left').mousedown(function() {
    return $('#pad_horizontal_down_left').css("backgroundColor", "teal");
  });

  $('#down_pad_left').mouseup(function() {
    return $('#pad_horizontal_down_left').css("backgroundColor", "#A2A2A2");
  });

  /*-----------------------------------------------------
  */


  $('.inc').mousedown(function() {
    $(this).css("background", 'url("img/down.png")');
    return $(this).css("background-size", '15px 15px');
  });

  $('.inc').mouseup(function() {
    $(this).css("background", 'url("img/up.png")');
    return $(this).css("background-size", '15px 15px');
  });

  $('.dec').mousedown(function() {
    $(this).css("background", 'url("img/down.png")');
    return $(this).css("background-size", '15px 15px');
  });

  $('.dec').mouseup(function() {
    $(this).css("background", 'url("img/up.png")');
    return $(this).css("background-size", '15px 15px');
  });

}).call(this);