$('.device').on "mouseenter", ->
  $(this).addClass("rt")
$('.device').on "mouseleave", ->
  $(this).removeClass("rt")
$('.device').on "mousedown", ->
  $(this).addClass("device_active")
  $(this).siblings().removeClass("device_active")
#$('.device').on "mouseup", ->
#  $(this).removeClass("device_active")




$('.stct').on "mouseenter", ->
  $(this).addClass("rt")
$('.stct').on "mouseleave", ->
  $(this).removeClass("rt")
$('.stct').on "mousedown", ->
  $(this).addClass("device_active")
  $(this).siblings().removeClass("device_active")



$('#up_top').mousedown ->
    $('#horizontal_up_top').css("backgroundColor","teal")
    $('#vertical_up_top').css("backgroundColor","teal")
$('#up_top').mouseup ->
    $('#horizontal_up_top').css("backgroundColor","#A2A2A2")
    $('#vertical_up_top').css("backgroundColor","#A2A2A2")


$('#down_top').mousedown ->
    $('#horizontal_down_top').css("backgroundColor","teal")
$('#down_top').mouseup ->
    $('#horizontal_down_top').css("backgroundColor","#A2A2A2")



$('#up_right').mousedown ->
    $('#horizontal_up_right').css("backgroundColor","teal")
    $('#vertical_up_right').css("backgroundColor","teal")
$('#up_right').mouseup ->
    $('#horizontal_up_right').css("backgroundColor","#A2A2A2")
    $('#vertical_up_right').css("backgroundColor","#A2A2A2")


$('#down_right').mousedown ->
    $('#horizontal_down_right').css("backgroundColor","teal")
$('#down_right').mouseup ->
    $('#horizontal_down_right').css("backgroundColor","#A2A2A2")



$('#up_bottom').mousedown ->
    $('#horizontal_up_bottom').css("backgroundColor","teal")
    $('#vertical_up_bottom').css("backgroundColor","teal")
$('#up_bottom').mouseup ->
    $('#horizontal_up_bottom').css("backgroundColor","#A2A2A2")
    $('#vertical_up_bottom').css("backgroundColor","#A2A2A2")


$('#down_bottom').mousedown ->
    $('#horizontal_down_bottom').css("backgroundColor","teal")
$('#down_bottom').mouseup ->
    $('#horizontal_down_bottom').css("backgroundColor","#A2A2A2")



$('#up_left').mousedown ->
    $('#horizontal_up_left').css("backgroundColor","teal")
    $('#vertical_up_left').css("backgroundColor","teal")
$('#up_left').mouseup ->
    $('#horizontal_up_left').css("backgroundColor","#A2A2A2")
    $('#vertical_up_left').css("backgroundColor","#A2A2A2")


$('#down_left').mousedown ->
    $('#horizontal_down_left').css("backgroundColor","teal")
$('#down_left').mouseup ->
    $('#horizontal_down_left').css("backgroundColor","#A2A2A2")

###=====================================================================###

$('#up_pad_top').mousedown ->
    $('#pad_horizontal_up_top').css("backgroundColor","teal")
    $('#pad_vertical_up_top').css("backgroundColor","teal")
$('#up_pad_top').mouseup ->
    $('#pad_horizontal_up_top').css("backgroundColor","#A2A2A2")
    $('#pad_vertical_up_top').css("backgroundColor","#A2A2A2")


$('#down_pad_top').mousedown ->
    $('#pad_horizontal_down_top').css("backgroundColor","teal")
$('#down_pad_top').mouseup ->
    $('#pad_horizontal_down_top').css("backgroundColor","#A2A2A2")



$('#up_pad_right').mousedown ->
    $('#pad_horizontal_up_right').css("backgroundColor","teal")
    $('#pad_vertical_up_right').css("backgroundColor","teal")
$('#up_pad_right').mouseup ->
    $('#pad_horizontal_up_right').css("backgroundColor","#A2A2A2")
    $('#pad_vertical_up_right').css("backgroundColor","#A2A2A2")


$('#down_pad_right').mousedown ->
    $('#pad_horizontal_down_right').css("backgroundColor","teal")
$('#down_pad_right').mouseup ->
    $('#pad_horizontal_down_right').css("backgroundColor","#A2A2A2")



$('#up_pad_bottom').mousedown ->
    $('#pad_horizontal_up_bottom').css("backgroundColor","teal")
    $('#pad_vertical_up_bottom').css("backgroundColor","teal")
$('#up_pad_bottom').mouseup ->
    $('#pad_horizontal_up_bottom').css("backgroundColor","#A2A2A2")
    $('#pad_vertical_up_bottom').css("backgroundColor","#A2A2A2")


$('#down_pad_bottom').mousedown ->
    $('#pad_horizontal_down_bottom').css("backgroundColor","teal")
$('#down_pad_bottom').mouseup ->
    $('#pad_horizontal_down_bottom').css("backgroundColor","#A2A2A2")



$('#up_pad_left').mousedown ->
    $('#pad_horizontal_up_left').css("backgroundColor","teal")
    $('#pad_vertical_up_left').css("backgroundColor","teal")
$('#up_pad_left').mouseup ->
    $('#pad_horizontal_up_left').css("backgroundColor","#A2A2A2")
    $('#pad_vertical_up_left').css("backgroundColor","#A2A2A2")


$('#down_pad_left').mousedown ->
    $('#pad_horizontal_down_left').css("backgroundColor","teal")
$('#down_pad_left').mouseup ->
    $('#pad_horizontal_down_left').css("backgroundColor","#A2A2A2")


###-----------------------------------------------------###


$('.inc').mousedown ->
    $(this).css("background",'url("img/down.png")')
    $(this).css("background-size",'15px 15px')

$('.inc').mouseup ->
    $(this).css("background",'url("img/up.png")')
    $(this).css("background-size",'15px 15px')
$('.dec').mousedown ->
    $(this).css("background",'url("img/down.png")')
    $(this).css("background-size",'15px 15px')

$('.dec').mouseup ->
    $(this).css("background",'url("img/up.png")')
    $(this).css("background-size",'15px 15px')