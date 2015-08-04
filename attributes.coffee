$ ->

  $("<div id='layout_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#layout_at_panel').hide()




  class attributes
    constructor:  ->
    strap : (@id,@parent) ->
      $divcr = "<div id= #{@id} class = 'at_container'></div>"
      $('#'+parent).append($divcr)

    create:(@parent,@label_id,@input_id,@label) ->
      $divcr = "<label id= #{@label_id} class = 'at_label'>#{@label}</label>"
      $('#'+parent).append($divcr)

      $spancr = "<input type='text' id = input_id class='at_input'>"
      $('#'+parent).append($spancr)
    create_drop :(@parent,@label_id,@input_id,@label) ->

      $divcr = "<label id= #{@label_id} class = 'at_label'>#{@label}</label>"
      $('#'+parent).append($divcr)

      $spancr = "<div class='input_container'><input type='text' id = input_id class='at_drop_input'></div>"
      $('#'+parent).append($spancr)

      $drop_cont = "<div class = 'drop_container'><div class ='drop'></div></div>"
      $('.input_container').append($drop_cont)

# textarea

  textarea = new attributes
  textarea.strap('textarea_id_container','layout_at_panel')
  textarea.create('textarea_id_container','textarea_id','textarea_input_id','Id')

  textarea.strap('textarea_class_container','layout_at_panel')
  textarea.create('textarea_class_container','textarea_class','textarea_input_class','Class')

  textarea.strap('textarea_title_container','layout_at_panel')
  textarea.create('textarea_title_container','textarea_title','textarea_input_title','Title')


  textarea.strap('textarea_name_container','layout_at_panel')
  textarea.create('textarea_name_container','textarea_name','textarea_input_name','Name')

  textarea.strap('textarea_size_container','layout_at_panel')
  textarea.create('textarea_size_container','textarea_size','textarea_input_size','Size')

  textarea.strap('textarea_placeholder_container','layout_at_panel')
  textarea.create('textarea_placeholder_container','textarea_placeholder','textarea_input_placeholder','Placeholder')

  textarea.strap('textarea_text_container','layout_at_panel')
  textarea.create('textarea_text_container','textarea_text','textarea_input_text','Text')



# button

  $("<div id='button_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#button_at_panel').hide()

  button = new attributes

  button.strap('button_id_container','button_at_panel')
  button.create('button_id_container','button_id','button_input_id','Id')


  button.strap('button_class_container','button_at_panel')
  button.create('button_class_container','button_class','button_input_class','Class')


  button.strap('button_text_container','button_at_panel')
  button.create('button_text_container','button_text','button_input_text','Text')


  button.strap('button_size_container','button_at_panel')
  button.create_drop('button_size_container','button_size','button_input_size','Size')

  button.strap('button_target_container','button_at_panel')
  button.create_drop('button_target_container','button_target','button_input_target','Target')

  button.strap('button_theme_container','button_at_panel')
  button.create_drop('button_theme_container','button_theme','button_input_theme','Theme')

  button.strap('button_icon_container','button_at_panel')
  button.create_drop('button_icon_container','button_icon','button_input_icon','Size')

  button.strap('button_iconpostion_container','button_at_panel')
  button.create_drop('button_iconpostion_container','button_iconpostion','button_input_iconpostion','Icon Positon')


# header

  $("<div id='header_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#header_at_panel').hide()


  header = new attributes


  header.strap('header_id_container','header_at_panel')
  header.create('header_id_container','header_id','header_input_id','Id')

  header.strap('header_class_container','header_at_panel')
  header.create('header_class_container','header_class','header_input_class','Class')

  header.strap('header_title_container','header_at_panel')
  header.create('header_title_container','header_title','header_input_title','Title')

  header.strap('header_align_container','header_at_panel')
  header.create_drop('header_align_container','header_align','header_input_align','Align')

  header.strap('header_theme_container','header_at_panel')
  header.create_drop('header_theme_container','header_theme','header_input_theme','Theme')

  header.strap('header_size_container','header_at_panel')
  header.create_drop('header_size_container','header_size','header_input_size','Size')



  header.strap('header_bgimage_container','header_at_panel')
  header.create('header_bgimage_container','header_bgimage','header_input_bgimage','Bg.Image')

  header.strap('header_bgrepeat_container','header_at_panel')
  header.create('header_bgrepeat_container','header_bgrepeat','header_input_bgrepeat','Bg.Repeat')


# footer

  $("<div id='footer_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#footer_at_panel').hide()

  footer = new attributes


  footer.strap('footer_id_container','footer_at_panel')
  footer.create('footer_id_container','footer_id','footer_input_id','Id')

  footer.strap('footer_class_container','footer_at_panel')
  footer.create('footer_class_container','footer_class','footer_input_class','Class')

  footer.strap('footer_title_container','footer_at_panel')
  footer.create('footer_title_container','footer_title','footer_input_title','Title')

  footer.strap('footer_align_container','footer_at_panel')
  footer.create_drop('footer_align_container','footer_align','footer_input_align','Align')

  footer.strap('footer_theme_container','footer_at_panel')
  footer.create_drop('footer_theme_container','footer_theme','footer_input_theme','Theme')

  footer.strap('footer_size_container','footer_at_panel')
  footer.create_drop('footer_size_container','footer_size','footer_input_size','Size')

  footer.strap('footer_bgimage_container','footer_at_panel')
  footer.create('footer_bgimage_container','footer_bgimage','footer_input_bgimage','Bg.Image')

  footer.strap('footer_bgrepeat_container','footer_at_panel')
  footer.create('footer_bgrepeat_container','footer_bgrepeat','footer_input_bgrepeat','Bg.Repeat')



# image



  $("<div id='radio_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#radio_at_panel').hide()

  radio =new attributes

  radio.strap('radio_id_container','radio_at_panel')
  radio.create('radio_id_container','radio_id','radio_input_id','Id')

  radio.strap('radio_class_container','radio_at_panel')
  radio.create('radio_class_container','radio_class','radio_input_class','Class')

  radio.strap('radio_name_container','radio_at_panel')
  radio.create('radio_name_container','radio_name','radio_input_name','Name')

  radio.strap('radio_title_container','radio_at_panel')
  radio.create('radio_title_container','radio_title','radio_input_title','Title')

  radio.strap('radio_size_container','radio_at_panel')
  radio.create('radio_size_container','radio_size','radio_input_size','Size')

  radio.strap('radio_orientation_container','radio_at_panel')
  radio.create_drop('radio_orientation_container','radio_orientation','radio_input_orientation','Orientation')
  # Item attribute is yet to complete



  $("<div id='toggleswitch_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#toggleswitch_at_panel').hide()

  toggle =new attributes

  toggle.strap('toggle_id_container','toggleswitch_at_panel')
  toggle.create('toggle_id_container','toggle_id','toggle_input_id','Id')

  toggle.strap('toggle_class_container','toggleswitch_at_panel')
  toggle.create('toggle_class_container','toggle_class','toggle_input_class','Class')

  toggle.strap('toggle_title_container','toggleswitch_at_panel')
  toggle.create('toggle_title_container','toggle_title','toggle_input_title','Title')

  toggle.strap('toggle_name_container','toggleswitch_at_panel')
  toggle.create('toggle_name_container','toggle_name','toggle_input_name','Name')

  toggle.strap('toggle_size_container','toggleswitch_at_panel')
  toggle.create_drop('toggle_size_container','toggle_size','toggle_input_size','Size')

  toggle.strap('toggle_activetext_container','toggleswitch_at_panel')
  toggle.create('toggle_activetext_container','toggle_activetext','toggle_input_activetext','ONText')

  toggle.strap('toggle_inactivetext_container','toggleswitch_at_panel')
  toggle.create('toggle_inactivetext_container','toggle_inactivetext','toggle_input_inactivetext','OFFText')

  toggle.strap('toggle_theme_container','toggleswitch_at_panel')
  toggle.create_drop('toggle_theme_container','toggle_theme','toggle_input_theme','Theme')



  $("<div id='link_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#link_at_panel').hide()

  link= new attributes

  link.strap('link_id_container','link_at_panel')
  link.create('link_id_container','link_id','link_input_id','Id')

  link.strap('link_class_container','link_at_panel')
  link.create('link_class_container','link_class','link_input_class','Class')

  link.strap('link_text_container','link_at_panel')
  link.create('link_text_container','link_text','link_input_text','Text')

  link.strap('link_url_container','link_at_panel')
  link.create('link_url_container','link_url','link_input_url','Url')

  link.strap('link_pageTo_container','link_at_panel')
  link.create_drop('link_pageTo_container','link_pageTo','link_input_pageTo','PageTo')

  link.strap('link_newwindow_container','link_at_panel')
  link.create_drop('link_newwindow_container','link_newwindow','link_input_newwindow','OpenNW')

  link.strap('link_transition_container','link_at_panel')
  link.create_drop('link_transition_container','link_transition','link_input_transition','Transition')



  $("<div id='collapsible_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#collapsible_at_panel').hide()

  collapsible =new attributes

  collapsible.strap('collapsible_id_container','collapsible_at_panel')
  collapsible.create('collapsible_id_container','collapsible_id','collapsible_input_id','Id')

  collapsible.strap('collapsible_class_container','collapsible_at_panel')
  collapsible.create('collapsible_class_container','collapsible_class','collapsible_input_class','Class')

  collapsible.strap('collapsible_sectionheader_container','collapsible_at_panel')
  collapsible.create('collapsible_sectionheader_container','collapsible_secheader','collapsible_input_secheader','SecHeader')

  collapsible.strap('collapsible_headertheme_container','collapsible_at_panel')
  collapsible.create_drop('collapsible_headertheme_container','collapsible_headertheme','collapsible_input_headertheme','HeaderTheme')

  collapsible.strap('collapsible_contanttheme_container','collapsible_at_panel')
  collapsible.create_drop('collapsible_contanttheme_container','collapsible_contanttheme','collapsible_input_contanttheme','ContantTheme')
  # selection header yet to complete



  $("<div id='map_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#map_at_panel').hide()

  map =new attributes

  map.strap('map_id_container','map_at_panel')
  map.create('map_id_container','map_id','map_input_id','Id')

  map.strap('map_class_container','map_at_panel')
  map.create('map_class_container','map_class','map_input_class','Class')

  map.strap('map_location_container','map_at_panel')
  map.create('map_location_container','map_location','map_input_location','Location')

  map.strap('map_zoomlevel_container','map_at_panel')
  map.create('map_zoomlevel_container','map_zoomlevel','map_input_zoomlevel','ZoomLevel')

  map.strap('map_width_container','map_at_panel')
  map.create('map_width_container','map_width','map_input_width','Width')

  map.strap('map_height_container','map_at_panel')
  map.create('map_height_container','map_height','map_input_height','Height')
  #markers yet to  be completed


  $("<div id='slider_at_panel' class='object_at_panel'></div>").appendTo(at_panel)
  $('#slider_at_panel').show()

  slider =new attributes

  slider.strap('slider_id_container','slider_at_panel')
  slider.create('slider_id_container','slider_id','slider_input_id','Id')

  slider.strap('slider_class_container','slider_at_panel')
  slider.create('slider_class_container','slider_class','slider_input_class','Class')

  slider.strap('slider_title_container','slider_at_panel')
  slider.create('slider_title_container','slider_title','slider_input_title','Title')

  slider.strap('slider_value_container','slider_at_panel')
  slider.create('slider_value_container','slider_value','slider_input_value','Value')

  slider.strap('slider_min_container','slider_at_panel')
  slider.create('slider_min_container','slider_min','slider_input_min','MinValue')

  slider.strap('slider_max_container','slider_at_panel')
  slider.create('slider_max_container','slider_max','slider_input_max','MaxValue')

  slider.strap('slider_hightlight_container','slider_at_panel')
  slider.create_drop('slider_highlight_container','slider_highlight','slider_input_highlight','Highlight')

  slider.strap('slider_slidtheme_container','slider_at_panel')
  slider.create_drop('slider_slidtheme_container','slider_slidtheme','slider_input_slidtheme','SliderTheme')

  slider.strap('slider_pointertheme_container','slider_at_panel')
  slider.create('slider_pointertheme_container','slider_pointertheme','slider_input_pointertheme','PointerTheme')
  # slider yet to complete



  $("<div id='image_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#image_at_panel').hide()

  image = new attributes

  image.strap('image_id_container','image_at_panel')
  image.create('image_id_container','image_id','image_input_id','Id')

  image.strap('image_class_container','image_at_panel')
  image.create('image_class_container','image_class','image_input_class','Class')

  image.strap('image_alt_container','image_at_panel')
  image.create('image_alt_container','image_alt','image_input_alt','Alternative')

  image.strap('image_upload_container','image_at_panel')
  image.create_drop('image_upload_container','image_upload','image_input_upload','Upload')
  ### upload button on right side to be implemented ###

  image.strap('image_link_container','image_at_panel')
  image.create('image_link_container','image_link','image_input_link','Link')

  image.strap('image_align_container','image_at_panel')
  image.create('image_align_container','image_align','image_input_align','Align')

  image.strap('image_display_container','image_at_panel')
  image.create('image_display_container','image_display','image_input_display','Display')

  image.strap('image_caption_container','image_at_panel')
  image.create('image_caption_container','image_caption','image_input_caption','Caption')


#  navigation bar

  $("<div id='nav_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#nav_at_panel').hide()

  nav_bar = new attributes
  nav_bar.strap('nav_id_container','nav_at_panel')
  nav_bar.create('nav_id_container','nav_id','nav_input_id','Id')

  nav_bar.strap('nav_class_container','nav_at_panel')
  nav_bar.create('nav_class_container','nav_class','nav_input_class','Class')

  nav_bar.strap('nav_bar_text_container','nav_at_panel')
  nav_bar.create('nav_bar_text_container','nav_bar_text','nav_bar_input_text','Text')

  nav_bar.strap('nav_bar_theme_container','nav_at_panel')
  nav_bar.create_drop('nav_bar_theme_container','nav_theme','nav_bar_theme_select','Theme')

  nav_bar.strap('nav_bar_istate_container','nav_at_panel')
  nav_bar.create_drop('nav_bar_istate_container','nav_bar_istate','nav_bar_istate_select','Initial')

  nav_bar.strap('nav_bar_icon_container','nav_at_panel')
  nav_bar.create_drop('nav_bar_icon_container','nav_bar_icon','nav_bar_icon_select','Icon')

  nav_bar.strap('nav_bar_icon_pos_container','nav_at_panel')
  nav_bar.create_drop('nav_bar_icon_pos_container','nav_bar_icon_pos','nav_bar_icon_pos_select','Icon')

#  a add item button is there in navigation bar attribute panel

# select menu

  $("<div id='smenu_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#smenu_at_panel').hide()

  select_menu = new attributes

  select_menu.strap('smenu_id_container','smenu_at_panel')
  select_menu.create('smenu_id_container','smenu_id','smenu_input_id','Id')

  select_menu.strap('smenu_class_container','smenu_at_panel')
  select_menu.create('smenu_class_container','smenu_class','smenu_input_class','Class')

  select_menu.strap('smenu_name_container','smenu_at_panel')
  select_menu.create('smenu_name_container','smenu_name','smenu_name_class','Name')

  select_menu.strap('smenu_title_container','smenu_at_panel')
  select_menu.create('smenu_title_container','smenu_title','smenu_title_class','Title')

  select_menu.strap('smenu_title_container','smenu_at_panel')
  select_menu.create('smenu_size_container','smenu_size','smenu_size_class','Size')

#   Menu

  select_menu.strap('smenu_theme_container','smenu_at_panel')
  select_menu.create_drop('smenu_theme_container','smenu_theme','smenu_theme_select','Theme')

  select_menu.strap('smenu_items_container','smenu_at_panel')
  select_menu.create_drop('smenu_items_container','smenu_items','smenu_items_select','Items')

# video

  $("<div id='video_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#video_at_panel').hide()

  video = new attributes

  video.strap('video_id_container','video_at_panel')
  video.create('video_id_container','video_id','video_input_id','Id')

  video.strap('video_class_container','video_at_panel')
  video.create('video_class_container','video_class','video_input_class','Class')

  video.strap('video_title_container','video_at_panel')
  video.create('video_title_container','video_title','video_input_title','Title')

  video.strap('video_name_container','video_at_panel')
  video.create('video_name_container','video_name','video_input_name','Name')

  video.strap('video_size_container','video_at_panel')
  video.create_drop('video_size_container','video_size','video_input_size','Size')

  video.strap('video_yt_container','video_at_panel')
  video.create('video_yt_container','video_yturl','video_input_yturl','Youtube URL')

  video.strap('video_embed_container','video_at_panel')
  video.create('video_embed_container','video_embed','video_input_embed','Embedded Code')


  $("<div id='checkbox_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#checkbox_at_panel').hide()

  checkbox = new attributes

  checkbox.strap('checkbox_id_container','checkbox_at_panel')
  checkbox.create('checkbox_id_container','checkbox_id','checkbox_input_id','Id')

  checkbox.strap('checkbox_class_container','checkbox_at_panel')
  checkbox.create('checkbox_class_container','checkbox_class','checkbox_input_class','Class')

  checkbox.strap('checkbox_title_container','checkbox_at_panel')
  checkbox.create('checkbox_title_container','checkbox_title','checkbox_input_title','Title')

  checkbox.strap('checkbox_size_container','checkbox_at_panel')
  checkbox.create_drop('checkbox_size_container','checkbox_size','checkbox_input_size','Size')

  checkbox.strap('checkbox_orientation_container','checkbox_at_panel')
  checkbox.create('checkbox_orientation_container','checkbox_orientation','checkbox_input_orientation','Orientation')

  # search input

  $("<div id='sinput_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#sinput_at_panel').hide()

  sinput = new attributes

  sinput.strap('sinput_id_container','sinput_at_panel')
  sinput.create('sinput_id_container','sinput_id','sinput_input_id','Id')

  sinput.strap('sinput_class_container','sinput_at_panel')
  sinput.create('sinput_class_container','sinput_class','sinput_input_class','Class')

  sinput.strap('sinput_title_container','sinput_at_panel')
  sinput.create('sinput_title_container','sinput_title','sinput_title_class','Title')

  sinput.strap('sinput_name_container','sinput_at_panel')
  sinput.create('sinput_name_container','sinput_name','sinput_name_class','Name')

  sinput.strap('sinput_phold_container','sinput_at_panel')
  sinput.create('sinput_phold_container','sinput_phold','sinput_phold_class','Placehold')

  sinput.strap('sinput_size_container','sinput_at_panel')
  sinput.create('sinput_size_container','sinput_size','sinput_size_class','Size')

  sinput.strap('sinput_istate_container','sinput_at_panel')
  sinput.create_drop('sinput_istate_container','sinput_istate','sinput_istate_select','Initial')

  sinput.strap('sinput_icon_container','sinput_at_panel')
  sinput.create_drop('sinput_icon_container','sinput_icon','sinput_icon_select','Icon')

  sinput.strap('sinput_icon_pos_container','sinput_at_panel')
  sinput.create_drop('sinput_icon_pos_container','sinput_icon_pos','sinput_icon_pos_select','Icon Pos')


  # grid

  $("<div id='grid_at_panel' class = 'object_at_panel'></div>").appendTo(at_panel)

  $('#grid_at_panel').hide()

  grid = new attributes

  grid.strap('grid_id_container','grid_at_panel')
  grid.create('grid_id_container','grid_id','grid_input_id','Id')

  grid.strap('grid_class_container','grid_at_panel')
  grid.create('grid_class_container','grid_class','grid_input_class','Class')

  grid.strap('grid_column_container','grid_at_panel')
  grid.create('grid_column_container','grid_column','grid_column_class','Column')

  grid.strap('grid_row_container','grid_at_panel')
  grid.create('grid_row_container','grid_row','grid_row_class','Rows')

  grid.strap('grid_icon_container','grid_at_panel')
  grid.create_drop('grid_icon_container','grid_icon','grid_icon_select','Icon')

  grid.strap('grid_icon_pos_container','grid_at_panel')
  grid.create_drop('grid_icon_pos_container','grid_icon_pos','grid_icon_pos_select','Icon Pos')




