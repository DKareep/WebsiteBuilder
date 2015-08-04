# ToolTip

(($) ->
  $.fn.tooltip = (option) ->
        $(option.elementID).hover (->
            top=event.clientY
            left=event.clientX
            tip=$(this).attr('id')
            console.log(tip)
            $("#tooltip_holder").css "top", top
            $("#tooltip_holder").css "left", left
            $("#tooltip_holder").html(tip).show()
        ), ->
            $("#tooltip_holder").hide()
) jQuery


$ ->
  $('#icon_1').tooltip
    elementID:'#icon_1'

$ ->
  $('#icon_2').tooltip
    elementID:'#icon_2'

$ ->
  $('#font_size_stepper_wrapper').tooltip
    elementID: '#font_size_stepper_wrapper'



###
class generator contain 3 funcs basic , mod , and adv

#basic : used to insert a div with id ,class  to a parent div

#mod : used for performing modertly complex action ,  to insert an element of a desired
      <tag> with @content , where we can specify "id" n "class" of element and add it to a parent
       element .

#adv : same function as mod but id and class can be on an array basis and recursively callling
      and append it .
###

$ ->
class generator
  constructor: (@name) ->
  basic: (@id, @clss, @parent) ->
    if @clss
      $divcr = "<div id= #{@id} class = #{@clss}></div>"
      $(@parent).append($divcr)
    else
      $divcr = "<div id= #{@id} ></div>"
      $(@parent).append($divcr)

  mod: (@id, @clss, @parent, @content, @tag) ->
    if @clss
      $paracr = "<#{@tag} id= #{@id} class = #{@clss}>#{@content}</#{@tag}>"
      $(@parent).append($paracr)
    else
      $paracr = "<#{@tag} id= #{@id} >#{@content}</#{@tag}>"
      $(@parent).append($paracr)
  adv: (@id, @clss, @parent, @content, @tag) ->
    if @clss
      if @content
        for elem,i in @id

          @cont = @content[i]
          @cls = @clss[i]
          $paracr = "<#{@tag} id= #{elem} class = #{@cls}>#{@cont}</#{@tag}>"
          $(@parent).append($paracr)
      else
        for elem,i in @id

#          @cont = @content[i]
          @cls = @clss[i]
          $paracr = "<#{@tag} id= #{elem} class = #{@cls}></#{@tag}>"
          $(@parent).append($paracr)

    else
      if @content
        for elem,i in @id
          @cont = @content[i]
          $paracr = "<#{@tag} id= #{elem} >#{@cont}</#{@tag}>"
          $(@parent).append($paracr)
      else
        for elem in @id
          $paracr = "<#{@tag} id= #{elem}></#{@tag}>"
          $(@parent).append($paracr)
  box: (@id,@clss,@parent) ->
    if @clss
      $divcr = "<div id= #{@id} class = #{@clss}><div id=#{id}_top class=#{clss}_top><div id=#{@id}_close class=#{clss}_close></div></div></div>"
      $(@parent).append($divcr)
    else
      $divcr = "<div id= #{@id} ><div id=#{id}_top class=#{clss}_top><div id=#{@id}_close class=#{clss}_close></div></div></div>"
      $(@parent).append($divcr)



###
object.box(id,smallbox,parent)
object.box(id,mediumbox,parent)
object.box(id,largebox,parent)
  classes are already designed just have to add it

###











###
#writes initial content to document || left_panel
#assigns content written to variable 'lp' for ease of reference
###

document.write("<div id =page></div>")
#
#
#$('<div></div>', { id: 'page'}).appendTo("document.body")
###creates object || child generators###

object = new generator 'child'


#left_panle_main added to leftpanel
#left_panel_object added to leftpanel to show objeccts in each category
object.basic('tooltip_holder','','body')
object.basic('top_panel', '', page)

object.basic('toolbar_top', '', top_panel)

toolbar_ul_id = ['File', 'Edit', 'View', 'Help']
toolbar_ul_class = ['list', 'list', 'list', 'list']
toolbar_ul_text = ['File', 'Edit', 'View', 'Help']


object.adv(toolbar_ul_id, toolbar_ul_class, toolbar_top, toolbar_ul_text, 'li')




object.basic('drop_panel', '', top_panel)
object.basic('file_drop', '', drop_panel)

file_list_id = ['New_Page', 'Open', 'Save', 'Add teammates', 'Export as png', 'Export project', 'Duplicate page', 'Delete Page', 'Share']
file_list_class = ['file_list', 'file_list', 'file_list', 'file_list', 'file_list', 'file_list', 'file_list', 'file_list', 'file_list']
file_list_text = ['New Page', 'Open', 'Save', 'Add teammates', 'Export as png', 'Export project', 'Duplicate page', 'Delete Page', 'Share']

object.adv(file_list_id, file_list_class, file_drop, file_list_text, 'li')


object.basic('edit_drop', '', drop_panel)

edit_list_id = ['Undo', 'Redo', 'Copy', 'Paste', 'Duplicate Object', 'Delete Object', 'Move to front', 'Move to Back', 'Align']
edit_list_class = ['edit_list', 'edit_list', 'edit_list', 'edit_list', 'edit_list', 'edit_list', 'edit_list', 'edit_list', 'edit_list']
edit_list_text = ['Undo', 'Redo', 'Copy', 'Paste', 'Duplicate Object', 'Delete Object', 'Move to front', 'Move to Back', 'Align']

object.adv(edit_list_id, edit_list_class, edit_drop, edit_list_text, 'li')


object.basic('view_drop', '', drop_panel)


view_list_id = ['Preview mode', 'Edit mode', 'Canvas', 'BG color', 'BG image', 'Grid view', 'Rulers', 'Xray view', 'Position', 'Layers', 'Tree']
view_list_class = ['view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', 'view_list', ]
view_list_text = ['Preview mode', 'Edit mode', 'Canvas', 'BG color', 'BG image', 'Grid view', 'Rulers', 'Xray view', 'Position', 'Layers', 'Tree']

object.adv(view_list_id, view_list_class, view_drop, view_list_text, 'li')


object.basic('help_drop', '', drop_panel)

help_list_id = ['Team chat', 'Feed back', 'Help', 'Chat with designers', 'About']
help_list_text = ['Team chat', 'Feed back', 'Help', 'Chat with designers', 'About']
help_list_class = ['help_list', 'help_list', 'help_list', 'help_list', 'help_list', ]


object.adv(help_list_id, help_list_class, help_drop, help_list_text, 'li')

$('#file_drop').hide()

$('#File').on "click", ->
  $('#file_drop').toggle()
  $('#file_drop').siblings().hide()


$('#New_Page').on "click", ->
  alert("testing..success!! ")


$('#edit_drop').hide()

$('#Edit').on "click", ->
  $('#edit_drop').toggle()
  $('#edit_drop').siblings().hide()


$('#view_drop').hide()

$('#View').on "click", ->
  $('#view_drop').toggle()
  $('#view_drop').siblings().hide()

$('#help_drop').hide()

$('#Help').on "click", ->
  $('#help_drop').toggle()
  $('#help_drop').siblings().hide()

$("body").on "click", (e) ->
  if (e.target.className isnt 'list')
    $('#view_drop').hide()
    $('#file_drop').hide()
    $('#edit_drop').hide()
    $('#help_drop').hide()


object.basic('preview', '', top_panel)
preview_id = ['pre', 'build']
preview_text = ['Preview', 'Build']
preview_class = ['pv', 'pv']
object.adv(preview_id, preview_class, preview, preview_text, 'div')


$("#pre").on "click", ->
  $('#left_panel').fadeOut(700)
  $('#right_panel').fadeOut(700)


$("#build").on "click", ->
  $('#left_panel').fadeIn(700)
  $('#right_panel').fadeIn(700)


object.basic('shortcut','',top_panel)

short_id = ['undo','redo']
short_class = ['stct','stct']

object.adv(short_id,short_class,shortcut,'','div')

object.basic('device', '', top_panel)

device_id = ['mobile', 'pad', 'laptop', 'pc']
device_class = ['device', 'device', 'device', 'device']
object.adv(device_id, device_class, device, '', 'div')

object.basic('wrapper_lp', '',"body")
object.basic('wrapper_rp','',"body")
#object.basic('wrapper_editor','',wrapper)
object.basic('left_panel', '', wrapper_lp)

object.basic('editor', '',"body")


object.basic('left_panel_main', '', left_panel)
object.basic('left_panel_object', '', left_panel)

#divider in left panel object category list

for i in [1..9] by 1
  object.basic('lpdv_' + i, 'divider', left_panel_main)

#icons for object category

for i in [1..7] by 1
  object.basic('icon_' + i, 'icon', left_panel_main)


#code to show active object category
#addClass to active .icon div and remove inactive or previously active div

$(".icon").on "click", ->
  $(this).addClass('iconactive')
  $(this).siblings('.icon').removeClass('iconactive')
#    $(this).show('#lpo_container')


$(icon_1).on "click", ->
  $(cont).show()
  $(cont).siblings().hide()

$(icon_2).on "click", ->
  $(multimedia).show()
  $(multimedia).siblings().hide()

$(icon_3).on "click", ->
  $(shapes).show()
  $(shapes).siblings().hide()

$(icon_4).on "click", ->
  $(text).show()
  $(text).siblings().hide()
$(icon_5).on "click", ->
  $(navigation).show()
  $(navigation).siblings().hide()

$(icon_6).on "click", ->
  $(misc).show()
  $(misc).siblings().hide()

$(icon_7).on "click", ->
  $(form).show()
  $(form).siblings().hide()
###
    iden = $(this).attr('id')

    if iden is 'icon_1'
      console.log(iden)
      $(cont).show()
      $(cont).siblings().hide()

    if iden is 'icon_2'
      console.log(iden)
      $(multimedia).show()
      $(cont).siblings().hide()
#      ($this).sibling().hide()
#



###
#helper div to give help directive for each object
object.basic('helper', '', left_panel_object)

#lpo(leftpanelobject) to hold number of objects under a category
object.basic('lpo_container', '', left_panel_object)


#make div for holding objects name range from lpo_1 ...lpo_12
#for i in [1..12] by 1
#  object.basic('lpo_' + i, 'object', lpo_container)

#writes content to document || right_panel

#document.write("<div id =right_panel></div>")


lp_object_ls_id = ['cont', 'multimedia', 'shapes', 'text', 'navigation', 'form', 'misc' ]
lp_object_ls_class = ['obj_ls', 'obj_ls', 'obj_ls', 'obj_ls', 'obj_ls', 'obj_ls', 'obj_ls']

object.adv(lp_object_ls_id, lp_object_ls_class, lpo_container, '', 'div')


container_elm_id = ['layout', 'contain', 'grid', 'divider', 'row', 'column', 'span']
container_elm_class = ['"cont_obj inob first"', '"cont_obj inob mid"', '"cont_obj inob last"', '"cont_obj inob first"', '"cont_obj inob mid"', '"cont_obj inob last"', '"cont_obj inob first"']

#
#$(".icon").on "click" ,->
#    $(this).addClass('iconactive')
#    $(this).siblings('.icon').removeClass('iconactive')
#    $(this).show('#lpo_container')

object.adv(container_elm_id, container_elm_class, cont, '', 'div')


#$(cont).hide()
multi_elm_id = ['image', 'video', 'flash', 'map']
multi_elm_class = ['"mul_obj inob first"', '"mul_obj inob mid"', '"mul_obj inob last"', '"mul_obj inob first"']

object.adv(multi_elm_id, multi_elm_class, multimedia, '', 'div')


$(multimedia).hide()

shape_elm_id = ['triangle', 'rectangle', 'circle']
shape_elm_class = ['"shape_obj inob first"', '"shape_obj inob mid"', '"shape_obj inob last"']

object.adv(shape_elm_id, shape_elm_class, shapes, '', 'div')

$(shapes).hide()

text_elm_id = ['heading', 'smp_text', 'para', 'link']
text_elm_class = ['"text_obj inob first"', '"text_obj inob mid"', '"text_obj inob last"', '"text_obj inob first"']

object.adv(text_elm_id, text_elm_class, text, '', 'div')


$(text).hide()

nav_elm_id = ['nav_bar', 'nav_link', 'brand', 'ad']
nav_elm_class = ['"nav_obj inob first"', '"nav_obj inob mid"', '"nav_obj inob last"', '"nav_obj inob first"']

object.adv(nav_elm_id, nav_elm_class, navigation, '', 'div')
$(navigation).hide()

form_elm_id = ['form_cont', 'text_inp', 'text_area', 'form_label']
form_elm_class = ['"form_obj inob first"', '"form_obj inob mid"', '"form_obj inob last"', '"form_obj inob first"']


object.adv(form_elm_id, form_elm_class, form, '', 'div')
$(form).hide()


misc_elm_id = ['dropdown', 'header', 'footer', 'button', 'radio', 'check', 'select']
misc_elm_class = ['"misc_obj inob first"', '"misc_obj inob mid"', '"misc_obj inob last"', '"misc_obj inob first"', '"misc_obj inob mid"', '"misc_obj inob last"', '"misc_obj inob first"']


object.adv(misc_elm_id, misc_elm_class, misc, '', 'div')

$(misc).hide()


$(".inob").on "mouseover", ->
  $(this).addClass('cont_obj_hover')

$(".inob").on "mouseleave", ->
  $(this).removeClass('cont_obj_hover')





#  gwn()
##  $("#buton_1").draggable({containment: "parent"})
#
#gwn = ->
#  object.basic('buton_1','kareep',editor)
#  but = $("kareep")
#  console.log(but)
#
#


$('<div></div>', { id: 'right_panel'}).appendTo(wrapper_rp)

rp = $('#right_panel')


object.basic('rp_tab', '', rp)


#tab for shiftin between library and properties etc created nmaely tab_1 to tab_3


#created rp_tab to include tab_i divs inside rp (right_panel)
for i in [1..4] by 1
  object.basic('tab_' + i, 'rp_tab_class', rp_tab)

#TODO : Adding id || class names into array and looping with objects gives more code flexibilty
#TODO: change code below to array eventhogh duplication of id || class name will encounter

#3 right_panel blocks are created in right panel in name of rp_bloack_1 ..rp_block_3

for i in [1..6] by 1
  object.basic('rp_block_' + i, '', rp)


# added rp_block_top to contain top portion of right_panel_block , range rp_block_top_1 to 3
# added rp_bloack_content to contain elements of each rp_block , range rp_block_content_1 to 3

#object.mod('prop_panel', '', right_panel, '', 'div')

# created a scroll_content class as child of right panel and prop_panel is the child of scroll_content
object.mod('scroll_content', 'scroll_content', right_panel, '', 'div')
object.mod('prop_panel', '', scroll_content, '', 'div')

$(prop_panel).show()

$(tab_1).on "click", ->
  $(lib_panel).hide()
#  $('#tab_1').css("border-bottom","0px")
#  $('#tab_2').css("border-bottom","1px")
#  $('#tab_3').css("border-bottom","1px")
  $(layer_panel).hide()
  $(at_panel).hide()
  $(prop_panel).show()




object.mod('layer_panel', '', scroll_content, '', 'div')

$('<p id=rough_data>Working on it .. yo !!</p>').appendTo(layer_panel)

$(layer_panel).hide()

$(tab_2).on "click", ->
#  $('#tab_1').css("border-bottom","1px")
#  $('#tab_2').css("border-bottom","0px")
#  $('#tab_3').css("border-bottom","1px")
  $(layer_panel).show()

  $(lib_panel).hide()
  $(prop_panel).hide()
  $(at_panel).hide()


object.mod('lib_panel', '', scroll_content, '', 'div')

$('<p id=rough_data>Working on it .. yo !!</p>').appendTo(lib_panel)

$(lib_panel).hide()



$(tab_3).on "click", ->

#  $('#tab_1').css("border-bottom","1px")
#  $('#tab_2').css("border-bottom","1px")
#  $('#tab_3').css("border-bottom","0px")
  $(lib_panel).show()
  $(prop_panel).hide()
  $(layer_panel).hide()
  $(at_panel).hide()


object.mod('at_panel', '', scroll_content, '', 'div')

#$('<p id=rough_data>Working on it .. yo !!</p>').appendTo(at_panel)

$(at_panel).hide()


$(tab_4).on "click", ->
#  $('#tab_1').css("border-bottom","1px")
#  $('#tab_2').css("border-bottom","0px")
#  $('#tab_3').css("border-bottom","1px")
  $(layer_panel).hide()

  $(lib_panel).hide()
  $(prop_panel).hide()

  $(at_panel).show()

######p_blocks = ['rp_block_1','rp_block_2','rp_block_3']###
#
$(prop_panel).append(rp_block_1)

$(prop_panel).append(rp_block_2)

$(prop_panel).append(rp_block_3)

#S$(prop_panel).append(rp_block_4)

#S$(prop_panel).append(rp_block_5)









#added elements to rp_blocks





object.basic('rp_block_top_1', 'rp_block_top', rp_block_1)
object.basic('rp_block_content_1', 'rp_block_content_class', rp_block_1)

object.basic('rp_block_top_2', 'rp_block_top', rp_block_2)
object.basic('rp_block_content_2', 'rp_block_content_class', rp_block_2)

object.basic('rp_block_top_3', 'rp_block_top', rp_block_3)
object.basic('rp_block_content_3', 'rp_block_content_class', rp_block_3)


object.mod('Properties', '', tab_1, 'Properties', 'span')
object.mod('Layer', '', tab_2, 'Layer', 'span')
object.mod('Library', '', tab_3, 'Library', 'span')
object.mod('Attributes','',tab_4,'Attri','span')


#adds text to rp_block_top_1..3

object.mod('position_text', '', rp_block_top_1, 'POSITION', 'span')
object.mod('background_text', '', rp_block_top_2, 'BACKGROUND', 'span')
object.mod('border_text', '', rp_block_top_3, 'BORDER', 'span')
#object.mod('typography_text','',rp_block_top_4,'TYPOGRAPHY','span')
#object.mod('shadows_text','',rp_block_top_5,'SHADOWS','span')

# adds advanced_div to rp_block_top to contain advanced_text and advanced_toggle
###

object.mod('advanced_div', '', rp_block_top_1, '', 'div')

object.mod('advaced_text', '', advanced_div, 'Advanced', 'p')
object.mod('advaced_toggle', '', advanced_div, '', 'div')

###

#TODO: order code below efficiently

#main element wrappers in rb_block_content_1 ..3

rb1_element_id = ['resize', 'property_panel_position', 'alignment']
rb2_element_id = ['imngr', 'fill']
rb3_element_id = ['border_container', 'border_radius', 'property_panel_border']
#rb4_element_id = ['font_family_list','font_weight_list','font_colorpicker','font_size_stepper','line_height_stepper','letter_spacing_stepper','text_indent_stepper','text_align_control','text_case_control','text_decoration_control','text_direction_control']
#rb5_element_id = ['box_shadow', 'text_shadow']

#TODO : change this execution into loop


#adds elements to rb_block_content_1 ..3


object.adv(rb1_element_id, '', rp_block_content_1, '', 'div')
object.adv(rb2_element_id, '', rp_block_content_2, '', 'div')
object.adv(rb3_element_id, '', rp_block_content_3, '', 'div')
#object.adv(rb4_element_id, '', rp_block_content_4, '', 'div')
#object.adv(rb5_element_id, '', rp_block_content_4, '', 'div')


### -----------1st block in right propertypanel ----------- ###


resize_sub = ['margin', 'padding', 'centerpiece']

object.adv(resize_sub, '', resize, '', 'div')

margin_parts_id = ['marg_top', 'marg_right', 'marg_bottom', 'marg_left']
margin_parts_class = ['margin_style', 'margin_style', 'margin_style', 'margin_style']

object.adv(margin_parts_id, margin_parts_class, margin, '', 'div')


pad_parts_id = ['pad_top', 'pad_right', 'pad_bottom', 'pad_left']
pad_parts_class = ['pad_style', 'pad_style', 'pad_style', 'pad_style']

object.adv(pad_parts_id, pad_parts_class, padding, '', 'div')


margin_top_ud_id = [ 'up_top', 'down_top']
margin_top_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_margin_top', 'ud_holder', marg_top)

object.adv(margin_top_ud_id, margin_top_ud_class, ud_margin_top, '', 'div')


hnv_id_up_top = ['horizontal_up_top','vertical_up_top']
hnv_cls_up_top = ['hrl','vrl']
object.adv(hnv_id_up_top,hnv_cls_up_top,up_top,'','div')

hnv_id_down_top = ['horizontal_down_top']
hnv_cls_down_top = ['hrl']
object.adv(hnv_id_down_top,hnv_cls_down_top,down_top,'','div')


margin_right_ud_id = [ 'up_right', 'down_right']
margin_right_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_margin_right', 'ud_holder', marg_right)

object.adv(margin_right_ud_id, margin_right_ud_class, ud_margin_right, '', 'div')


hnv_id_up_right = ['horizontal_up_right','vertical_up_right']
hnv_cls_up_right = ['hrl','vrl']
object.adv(hnv_id_up_right,hnv_cls_up_right,up_right,'','div')

hnv_id_down_right = ['horizontal_down_right']
hnv_cls_down_right = ['hrl']
object.adv(hnv_id_down_right,hnv_cls_down_right,down_right,'','div')


margin_bottom_ud_id = [ 'up_bottom', 'down_bottom']
margin_bottom_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_margin_bottom', 'ud_holder', marg_bottom)

object.adv(margin_bottom_ud_id, margin_bottom_ud_class, ud_margin_bottom, '', 'div')


hnv_id_up_bottom= ['horizontal_up_bottom','vertical_up_bottom']
hnv_cls_up_bottom = ['hrl','vrl']
object.adv(hnv_id_up_bottom,hnv_cls_up_bottom,up_bottom,'','div')

hnv_id_down_bottom = ['horizontal_down_bottom']
hnv_cls_down_bottom = ['hrl']
object.adv(hnv_id_down_bottom,hnv_cls_down_bottom,down_bottom,'','div')



margin_left_ud_id = [ 'up_left', 'down_left']
margin_left_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_margin_left', 'ud_holder', marg_left)
object.adv(margin_left_ud_id, margin_bottom_ud_class, ud_margin_left, '', 'div')



hnv_id_up_left= ['horizontal_up_left','vertical_up_left']
hnv_cls_up_left= ['hrl','vrl']
object.adv(hnv_id_up_left,hnv_cls_up_left,up_left,'','div')

hnv_id_down_left = ['horizontal_down_left']
hnv_cls_down_left = ['hrl']
object.adv(hnv_id_down_left,hnv_cls_down_left,down_left,'','div')



padding_top_ud_id = [ 'up_pad_top', 'down_pad_top']
padding_top_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_padding_top', 'ud_holder', pad_top)

object.adv(padding_top_ud_id, padding_top_ud_class, ud_padding_top, '', 'div')

pad_hnv_id_up_top = ['pad_horizontal_up_top','pad_vertical_up_top']
pad_hnv_cls_up_top = ['pad_hrl','pad_vrl']
object.adv(pad_hnv_id_up_top,pad_hnv_cls_up_top,up_pad_top,'','div')

pad_hnv_id_down_top = ['pad_horizontal_down_top']
pad_hnv_cls_down_top = ['pad_hrl']
object.adv(pad_hnv_id_down_top,pad_hnv_cls_down_top,down_pad_top,'','div')




padding_right_ud_id = [ 'up_pad_right', 'down_pad_right']
padding_right_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_pad_right', 'ud_holder', pad_right)

object.adv(padding_right_ud_id, padding_right_ud_class, ud_pad_right, '', 'div')


pad_hnv_id_up_right = ['pad_horizontal_up_right','pad_vertical_up_right']
pad_hnv_cls_up_right = ['pad_hrl','pad_vrl']
object.adv(pad_hnv_id_up_top,pad_hnv_cls_up_top,up_pad_right,'','div')

pad_hnv_id_down_right = ['pad_horizontal_down_right']
pad_hnv_cls_down_right = ['pad_hrl']
object.adv(pad_hnv_id_down_right,pad_hnv_cls_down_right,down_pad_right,'','div')



padding_bottom_ud_id = [ 'up_pad_bottom', 'down_pad_bottom']
padding_bottom_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_pad_bottom', 'ud_holder', pad_bottom)

object.adv(padding_bottom_ud_id, padding_bottom_ud_class, ud_pad_bottom, '', 'div')


pad_hnv_id_up_bottom = ['pad_horizontal_up_bottom','pad_vertical_up_bottom']
pad_hnv_cls_up_bottom = ['pad_hrl','pad_vrl']
object.adv(pad_hnv_id_up_bottom,pad_hnv_cls_up_bottom,up_pad_bottom,'','div')

pad_hnv_id_down_bottom = ['pad_horizontal_down_bottom']
pad_hnv_cls_down_bottom= ['pad_hrl']
object.adv(pad_hnv_id_down_bottom,pad_hnv_cls_down_bottom,down_pad_bottom,'','div')




padding_left_ud_id = [ 'up_pad_left', 'down_pad_left']
padding_left_ud_class = ['pos_inc', 'pos_dec']

object.basic('ud_pad_left', 'ud_holder', pad_left)
object.adv(padding_left_ud_id, padding_bottom_ud_class, ud_pad_left, '', 'div')


pad_hnv_id_up_left= ['pad_horizontal_up_left','pad_vertical_up_left']
pad_hnv_cls_up_left= ['pad_hrl','pad_vrl']
object.adv(pad_hnv_id_up_left,pad_hnv_cls_up_left,up_pad_left,'','div')

pad_hnv_id_down_left= ['pad_horizontal_down_left']
pad_hnv_cls_down_left= ['pad_hrl']
object.adv(pad_hnv_id_down_left,pad_hnv_cls_down_left,down_pad_left,'','div')





object.basic('width_div_prop', '', property_panel_position)
object.basic('height_div_prop', '', property_panel_position)


object.basic "height_wrapper", "", height_div_prop
rb1_he_wr_el_cls = ["inc", "dec"]
rb1_he_wr_el_id = ["h_inc", "h_dec"]
object.adv rb1_he_wr_el_id, rb1_he_wr_el_cls, height_wrapper, "", "div"
$(height_wrapper).append "<input type = \"text\" class=\"height_input field\" value = \"1\" >"


object.basic "width_wrapper", "", width_div_prop
rb1_wi_wr_el_cls = ["inc", "dec"]
rb1_wi_wr_el_id = ["w_inc", "w_dec"]
object.adv rb1_wi_wr_el_id, rb1_wi_wr_el_cls, width_wrapper, "", "div"
$(width_wrapper).append "<input type = \"text\" class=\"width_input field\" value = \"50\" >"



#
#object.basic('min_div_prop', '', property_panel_position)
#object.basic('max_div_prop', '', property_panel_position)
#
#
#object.basic "height_wrapper", "", height_div_prop
#rb1_he_wr_el_cls = ["inc", "dec"]
#rb1_he_wr_el_id = ["h_inc", "h_dec"]
#object.adv rb1_he_wr_el_id, rb1_he_wr_el_cls, height_wrapper, "", "div"
#$(height_wrapper).append "<input type = \"text\" class=\"height_input\" value = \"1\" >"
#
#
#object.basic "width_wrapper", "", width_div_prop
#rb1_wi_wr_el_cls = ["inc", "dec"]
#rb1_wi_wr_el_id = ["w_inc", "w_dec"]
#object.adv rb1_wi_wr_el_id, rb1_wi_wr_el_cls, width_wrapper, "", "div"
#$(width_wrapper).append "<input type = \"text\" class=\"width_input\" value = \"50\" >"
#

#object.basic('w_up','up',w_inc)
#object.basic('w_down','down',w_dec)


# adds divs and paragraph to property_panel_postion
###object.adv(rb1_prop_div_id, rb1_prop_div_class, property_panel_position, '', 'div')###


object.mod('height_text', '', height_div_prop, 'Height', 'label')
object.mod('width_text', '', width_div_prop, 'Width', 'label')

# adds horizontal rule and float_wrapper to alignment div


object.mod('horizonatl_rule_position', '', alignment, '', 'hr')
object.basic('float_wrapper', '', alignment)

# adds float_text n float_div to float_wrapper

object.mod('float_text', '', float_wrapper, 'Float:', 'p')
object.mod('float_div', '', float_wrapper, '', 'div')

# adds 3 floating styles to float_div

rb1_align_div_id = ['float_left', 'float_center', 'float_right']
rb1_align_div_class = ['float_alignment', 'float_alignment', 'float_alignment']
object.adv(rb1_align_div_id, rb1_align_div_class, float_div, '', 'div')


object.basic('dimen', 'dimewrapper', rp_block_content_1)
object.mod('seldis', '', dimen, 'px', 'span')
object.basic('dime_down', ''.dimen)
object.mod('ul_id', 'ul_class', dimen, '', 'ul')


ul_elements = ['elem_1', 'elem_2']
ul_text = ['px', 'em']

object.adv(ul_elements, ul_elements, ul_id, ul_text, 'li')

$(ul_id).hide()

$(dimen).on "click", ->
  $(ul_id).toggle()


$('#ul_id  li ').on "click", ->
  click = $(this)
  #   console.log(click.text())

  vari = click.text()
  $(seldis).html(vari)


$(rp_block_top_1).on "click", ->
  $(rp_block_content_1).slideToggle(250)
  $(rp_block_top_1).toggleClass('slideup')


### -----------2nd block in right propertypanel panel----------- ###


#defines n adds  div_id for elements in imngr div of rb2
rb2_imngr_div_id = ['imngrselector', 'selection_display']
object.adv(rb2_imngr_div_id, '', imngr, '', 'div')

ing = ['image_prop','grad_prop']
ing_class = ['ing_cls','ing_cls']

object.adv(ing,ing_class,imngrselector,'','div')


# adds image and gradient text to imngr_div
object.mod('imngr_text', '', imngr, 'Image & Gradient', 'span')

# adds horizontal rule and fill_color_div and fill_color_text to fill
object.mod('horizontal_rule_background', '', fill, '', 'hr')

# adds fill_div and fill_text to fill_wrapper
object.mod('fill_color_wrapper', '', fill, '', 'div')
object.mod('fill_color_text', '', fill_color_wrapper, 'Fill Color :', 'p')
object.mod('fill_color_div', '', fill_color_wrapper, '', 'div')

# adds spave holder for fill_color_drop
object.mod('fill_color_drop', '', fill_color_div, '', 'div')


$(rp_block_top_2).on "click", ->
  $(rp_block_content_2).slideToggle(250)
  $(rp_block_top_2).toggleClass('slideup')


### -----------3rd block in right propertypanel panel----------- ###


object.mod('border_rad_container', '', border_radius, '', 'div')


#defines elements in  border_div of rb_3

rb3_bordcon_div_id = ['dimension', 'topel', 'left', 'bottom', 'right', 'center']
rb3_bordcon_div_class = ['dime_change', 'spec', 'spec', 'spec', 'spec', 'spec']


#adds elements into border_container
object.adv(rb3_bordcon_div_id, rb3_bordcon_div_class, border_container, '', 'div')

#defines elements inside each of left , right ,top , bottom,center
rb3_border_element_div_id = [ 'up', 'down']
rb3_border_element_div_class = ['inc', 'dec']


object.basic('ud_container_left', 'ud_class', left)
object.basic('ud_container_bottom', 'ud_class', bottom)
object.basic('ud_container_topel', 'ud_class', topel)
object.basic('ud_container_right', 'ud_class', right)
object.basic('ud_container_center', 'ud_class', center)


object.adv(rb3_border_element_div_id, rb3_border_element_div_class, ud_container_left, '', 'div')
object.adv(rb3_border_element_div_id, rb3_border_element_div_class, ud_container_bottom, '', 'div')
object.adv(rb3_border_element_div_id, rb3_border_element_div_class, ud_container_topel, '', 'div')
object.adv(rb3_border_element_div_id, rb3_border_element_div_class, ud_container_right, '', 'div')
object.adv(rb3_border_element_div_id, rb3_border_element_div_class, ud_container_center, '', 'div')


$(ud_container_left).append "<input type = \"text\" class=\"left_input field\" value = \"1\" >"
$(ud_container_bottom).append "<input type = \"text\" class=\"bottom_input field\" value = \"1\" >"
$(ud_container_topel).append "<input type = \"text\" class=\"topel_input field\" value = \"1\" >"
$(ud_container_right).append "<input type = \"text\" class=\"right_input field\" value = \"1\" >"
$(ud_container_center).append "<input type = \"text\" class=\"center_input field\" value = \"1\" >"


rb3_bord_rad_div_id = ['top_right_rad', 'top_left_rad', 'bottom_left_rad', 'bottom_right_rad', 'border_rad_center']
rb3_bord_rad_div_class = ['spec_rad', 'spec_rad', 'spec_rad', 'spec_rad', 'spec_rad']


object.adv(rb3_bord_rad_div_id, rb3_bord_rad_div_class, border_rad_container, '', 'div')


object.mod('bord_rad_text', '', border_radius, 'Border Radius', 'p')


object.basic('ud_top_rad_left', 'ud_rad_class', top_left_rad)
object.basic('ud_top_rad_right', 'ud_rad_class', top_right_rad)
object.basic('ud_bottom_rad_left', 'ud_rad_class', bottom_left_rad)
object.basic('ud_bottom_rad_right', 'ud_rad_class', bottom_right_rad)
object.basic('bord_rad_center', 'ud_rad_class', border_rad_center)


rb3_bord_rad_element_div_id = [ 'up_rad', 'down_rad']
rb3_bord_rad_element_div_class = ['inc', 'dec']


object.adv(rb3_bord_rad_element_div_id, rb3_bord_rad_element_div_class, ud_top_rad_left, '', 'div')
object.adv(rb3_bord_rad_element_div_id, rb3_bord_rad_element_div_class, ud_top_rad_right, '', 'div')
object.adv(rb3_bord_rad_element_div_id, rb3_bord_rad_element_div_class, ud_bottom_rad_left, '', 'div')
object.adv(rb3_bord_rad_element_div_id, rb3_bord_rad_element_div_class, ud_bottom_rad_right, '', 'div')
object.adv(rb3_bord_rad_element_div_id, rb3_bord_rad_element_div_class, bord_rad_center, '', 'div')


$(ud_top_rad_left).append "<input type = \"text\" id=\"top_left_input\" class=\"rad_input field\" value = \"1\" >"
$(ud_top_rad_right).append "<input type = \"text\" id=\"top_right_input\" class=\"rad_input field\" value = \"1\" >"
$(ud_bottom_rad_left).append "<input type = \"text\" id=\"bottom_left_input\" class=\"rad_input field\" value = \"1\" >"
$(ud_bottom_rad_right).append "<input type = \"text\" id=\"bottom_right_input\" class=\"rad_input field\" value = \"1\" >"
$(bord_rad_center).append "<input type = \"text\" id=\"center_input\" class=\"rad_input field\" value = \"1\" >"


#defines elements in properties_div
rb3_propbord_div_id = ['style', 'width', 'color']

#adds elements (property_panel_div_id) to property panel
object.adv(rb3_propbord_div_id, '', property_panel_border, '', 'div')

#TODO: add class "panel_text" to all text in panel


# defines id n class divs to be inserted into border_style_container
border_style_id = ['solid', 'dash', 'dot']
border_style_class = ['border_styles', 'border_styles', 'border_styles']


#adds text "style" to  style_div
object.mod('style_text', 'panel_text', style, 'Style', 'p')
#adds border style_container_div into style_div
object.mod('border_style_container', '', style, '', 'div')
#adds border styles already defined  into border_style_container
object.adv(border_style_id, border_style_class, border_style_container, '', 'div')

#adds width_text and width_div to div Width
object.mod('width_text_bord', 'panel_text', width, 'Width', 'p')
###object.mod('border_width_div', '', width, '', 'div')###


object.basic "width_border_wrapper", "", width
rb1_wi_wr_el_b_cls = ["inc", "dec"]
rb1_wi_wr_el_b_id = ["wb_inc", "wb_dec"]
object.adv rb1_wi_wr_el_b_id, rb1_wi_wr_el_b_cls, width_border_wrapper, "", "div"
$(width_border_wrapper).append "<input type = \"text\" class=\"widthborder_input field\" value = \"1\" >"

#adds color_text and color_div to div Width
object.mod('color_text', 'panel_text', color, 'Color', 'p')
object.mod('color_div', '', color, '', 'div')


object.basic('dimen_br', 'dimewrapper', border_container)
object.mod('seldis_br', '', dimen_br, 'px', 'span')
object.basic('dime_down_br', ''.dimen_br)
object.mod('ul_id_br', 'ul_class', dimen_br, '', 'ul')


ul_elements = ['elem_1', 'elem_2']
ul_text = ['px', 'em']


object.adv(ul_elements, ul_elements, ul_id_br, ul_text, 'li')


$(ul_id_br).hide()

$(dimen_br).on "click", ->
  $(ul_id_br).toggle()


$('#ul_id_br  li ').on "click", ->
  click = $(this)
  #   console.log(click.text())

  vari = click.text()
  $(seldis_br).html(vari)

$(rp_block_top_3).on "click", ->
  $(rp_block_content_3).slideToggle(250)
  $(rp_block_top_3).toggleClass('slideup')


######--------------------functions......................##############

###
#
#dimeelements = ['px','em','testdime']
#dlen = dimeelements.length
#$(dime_changer).append("<select id = 'sel'></select>")
#$(dimension).append("<select id = 'sel'></select>")
#for i ,j in dimeelements
#  $(sel).append("<option>#{dimeelements[j]}</option>")
#
#
###

$(".inc").on "click",  ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal



$(".dec").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal



###
 4th Block in right property panel

###

$(prop_panel).append(rp_block_4)
object.basic('rp_block_top_4', 'rp_block_top', rp_block_4)
object.basic('rp_block_content_4', 'rp_block_content_class', rp_block_4)
object.mod('typography_text', '', rp_block_top_4, 'TYPOGRAPHY', 'span')
rb4_element_id = ['font_family_list', 'font_weight_list', 'font_colorpicker_wrapper', 'font_steppers_wrapper', 'text_control_wrapper']
object.adv(rb4_element_id, '', rp_block_content_4, '', 'div')

# font family list

object.basic('font_family_listID', 'font_family_listCLS', font_family_list)
object.mod('font_family_listdisplay', '', font_family_listID, 'ARIAL', 'span')
object.mod('font_family_ul_ID', 'font_family_ul_CLS', font_family_list, '', 'ul')
ul_elements = ['font_family_ele_1', 'font_family_ele_2', 'font_family_ele_3', 'font_family_ele_4', 'font_family_ele_5']
ul_text = ['ARIAL', 'COMIC', 'IMPACT', 'TIMES_NEW_ROMAN', 'ARIAL_BOLD']
object.adv(ul_elements, ul_elements, font_family_ul_ID, ul_text, 'li')
object.basic('font_familylist_image', '', font_family_list)

# on click for font family list

$(font_family_ul_ID).hide()
$(font_family_listID).on "click", ->
  $(font_family_ul_ID).toggle()
$('#font_family_ul_ID li').on "click", ->
  click = $(this)
  vari = click.text()
  $(font_family_listdisplay).html(vari)
  $(font_family_ul_ID).hide()

# font weight list

object.basic('font_weight_listID', 'font_weight_listCLS', font_weight_list)
object.mod('font_weight_listdisplay', '', font_weight_listID, 'BOLD', 'span')
object.mod('font_weight_ul_ID', 'font_weight_ul_CLS', font_weight_list, '', 'ul')
ul_elements = ['font_weight_ele_1', 'font_weight_ele_2', 'font_weight_ele_3', 'font_weight_ele_4', 'font_weight_ele_5']
ul_text = ['THIN', 'EXTRA_LIGHT', 'LIGHT', 'MEDIUM', 'BOLD']
object.adv(ul_elements, ul_elements, font_weight_ul_ID, ul_text, 'li')
object.basic('font_weightlist_image', '', font_weight_list)

# on click for font weight list

$(font_weight_ul_ID).hide()
$(font_weight_listID).on "click", ->
  $(font_weight_ul_ID).toggle()
$('#font_weight_ul_ID li').on "click", ->
  click = $(this)
  vari = click.text()
  $(font_weight_listdisplay).html(vari)
  $(font_weight_ul_ID).hide()

# font color picker

$(font_colorpicker_wrapper).append "<input type = \"text\" id=\"font_colorpicker_input_ID\" value = \"#333\">"
object.basic('font_colorpicker_dyna_button', '', font_colorpicker_wrapper)
object.basic('font_colorpicker_selector_window', '', font_colorpicker_wrapper)
object.basic('font_colorpicker_insert', '', font_colorpicker_selector_window)
object.basic('font_colorpicker_selectorwindow_inputwrapper', '', font_colorpicker_selector_window)
$(font_colorpicker_selectorwindow_inputwrapper).append "<label>Color : </label><input type=\'text\' id= \'font_colorpicker_selectorwindow_inputID\' value=\'#333\'>"
object.basic('font_colorpicker_selectorwindow_opacwrapper', '', font_colorpicker_selector_window)
$(font_colorpicker_selectorwindow_opacwrapper).append "<label>Opacity :</label><input type=\'text\' id= \'font_colorpicker_selectorwindow_stepperID\' value=\'1\'>"
$(font_colorpicker_selectorwindow_opacwrapper).append "<div id=\'font_colorpicker_selectorwindow_opac_inc\' class=\'inc\'></div><div id=\'font_colorpicker_selectorwindow_opac_dec\' class=\'dec\'></div>"
$(font_colorpicker_selector_window).append "<div id=\'font_colorpicker_selectorwindow_separator\'></div>"
$(font_colorpicker_selector_window).append "<button id=\'font_colorpicker_selectorwindow_button\' type=\'button\' onclick=''>OK</button>"
object.basic('color_div1', '', font_colorpicker_selector_window)
object.basic('color_div2', '', font_colorpicker_selector_window)
object.basic('color_div3', '', font_colorpicker_selector_window)
object.basic('font_colorpicker_image', '', font_colorpicker_wrapper)

# font colorpicker opacity function

$(font_colorpicker_selectorwindow_opac_inc).on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(font_colorpicker_selectorwindow_opac_dec).on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal

# font colorpicker selection box button

$(font_colorpicker_selectorwindow_button).on "click", ->
  $(font_colorpicker_selector_window).hide()

# font stepper wrappers

object.basic('font_size_stepper_wrapper', 'font_steppers_individualwrapper', font_steppers_wrapper)
object.basic('line_length_stepper_wrapper', 'font_steppers_individualwrapper', font_steppers_wrapper)
object.basic('line_spacing_stepper_wrapper', 'font_steppers_individualwrapper', font_steppers_wrapper)
object.basic('text_indent_stepper_wrapper', 'font_steppers_individualwrapper', font_steppers_wrapper)
$(font_size_stepper_wrapper).append "<input type=\'text\' id= \'font_size_stepper\' class=\'font_steppers_input\' value=\'1\'>"
$(line_length_stepper_wrapper).append "<input type=\'text\' id= \'line_length_stepper\' class=\'font_steppers_input\' value=\'1\'><br>"
$(line_spacing_stepper_wrapper).append "<input type=\'text\' id= \'line_spacing_stepper\' class=\'font_steppers_input\' value=\'1\'>"
$(text_indent_stepper_wrapper).append "<input type=\'text\' id= \'text_indent_stepper\' class=\'font_steppers_input\' value=\'1\'>"
$(font_size_stepper_wrapper).append "<div id=\'font_size_stepper_image\' class=\'font_stepper_images\'></div>"
$(line_length_stepper_wrapper).append "<div id=\'line_length_stepper_image\' class=\'font_stepper_images\'></div>"
$(line_spacing_stepper_wrapper).append "<div id=\'line_spacing_stepper_image\' class=\'font_stepper_images\'></div>"
$(text_indent_stepper_wrapper).append "<div id=\'text_indent_stepper_image\' class=\'font_stepper_images\'></div>"
object.basic('font_size_inc', 'inc_stepper', font_size_stepper_wrapper)
object.basic('font_size_dec', 'dec_stepper', font_size_stepper_wrapper)
object.basic('line_length_inc', 'inc_stepper', line_length_stepper_wrapper)
object.basic('line_length_dec', 'dec_stepper', line_length_stepper_wrapper)
object.basic('line_spacing_inc', 'inc_stepper', line_spacing_stepper_wrapper)
object.basic('line_spacing_dec', 'dec_stepper', line_spacing_stepper_wrapper)
object.basic('text_indent_inc', 'inc_stepper', text_indent_stepper_wrapper)
object.basic('text_indent_dec', 'dec_stepper', text_indent_stepper_wrapper)

# on click for colorpicker

$(font_colorpicker_selector_window).hide()
$(font_colorpicker_dyna_button).on "click", ->
  $(font_colorpicker_selector_window).toggle()

# typography separator

$(rp_block_content_4).append "<div id=\'typography_separator\'></div>"

# text control wrapper
text_control_wrappercontentsCLS = ['text_control_individual_wrapper', 'text_control_individual_wrapper', 'text_control_individual_wrapper', 'text_control_individual_wrapper']
text_control_wrappercontents = ['text_align_control', 'text_transform_control', 'text_decoration_control', 'text_direction_control']
object.adv(text_control_wrappercontents, text_control_wrappercontentsCLS, text_control_wrapper, '', 'div')

text_control_contentCLS = ['text_control_content', 'text_control_content', 'text_control_content', 'text_control_content']
text_align_control_div = ['aligncontent_div1', 'aligncontent_div2', 'aligncontent_div3', 'aligncontent_div4']
object.basic('text_align_imagediv', 'text_control_images', text_align_control)
object.adv(text_align_control_div, text_control_contentCLS, text_align_control, '', 'div')

text_control_contentCLS = ['text_control_content', 'text_control_content', 'text_control_content']
text_transform_control_div = ['transformcontent_div1', 'transformcontent_div2', 'transformcontent_div3']
object.basic('text_transform_imagediv', 'text_control_images', text_transform_control)
object.adv(text_transform_control_div, text_control_contentCLS, text_transform_control, '', 'div')

text_control_contentCLS = ['text_control_content', 'text_control_content']
text_decoration_control_div = ['decorationcontent_div1', 'decorationcontent_div2']
object.basic('text_decoration_imagediv', 'text_control_images', text_decoration_control)
object.adv(text_decoration_control_div, text_control_contentCLS, text_decoration_control, '', 'div')

text_control_contentCLS = ['text_control_content', 'text_control_content','text_control_content','text_control_content','text_control_content']
text_direction_control_div = ['directioncontent_div1', 'directioncontent_div2','directioncontent_div3','directioncontent_div4','directioncontent_div5']
object.basic('text_direction_imagediv', 'text_control_images', text_direction_control)
object.adv(text_direction_control_div, text_control_contentCLS, text_direction_control, '', 'div')

# stepper function

$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal

# on click for the whole content 4

$(rp_block_top_4).on "click", ->
  $(rp_block_content_4).slideToggle(250)
  $(rp_block_top_4).toggleClass('slideup')


###5th block
###

$(prop_panel).append(rp_block_5)
object.basic('rp_block_top_5', 'rp_block_top', rp_block_5)
object.basic('rp_block_content_5', 'rp_block_content_class', rp_block_5)
object.mod('shadow_text', '', rp_block_top_5, 'SHADOWS', 'span')

rb5_element_id = ['box_shadow', 'text_shadow']
#rb5_bs_id = ['bs_buttons','bs_show']
#rb5_ts_id = ['ts_buttons','ts_show']


#box shadow part

object.adv(rb5_element_id, '', rp_block_content_5, '', 'div')
#object.adv(rb5_bs_id, '', box_shadow, '', 'div')

# the popup advanced panel to select further options like angle and color
object.mod('box_shadow_advanced_window', '', box_shadow, '', 'div')

# conetents of advanced panel
object.mod('type_field', '', box_shadow_advanced_window, '', 'div')
# components under type_field
object.mod('type_text', '', type_field, 'TYPE', 'span')
object.mod('type_field_out', '', type_field, 'Outside', 'button')
object.mod('type_field_in', '', type_field, 'Inside', 'button')
object.mod('color_field', '', box_shadow_advanced_window, '', 'div')
##components under color_field
object.mod('color_field_text', '', color_field, 'COLOR', 'span')
object.mod('color_field_picker', '', color_field, '', 'div')
#sample fucction to color_filed_picker
#sample color_picker area
object.mod('color_field_picker_sample', '', color_field_picker, '', 'div')

#The colorpicker advanced fucntional toolbox

object.mod('colorpick_wrapper', '', color_field_picker_sample, '', 'div')

#wrapper has three child color_hue color_select color_opacity
object.mod('color_hue', '', colorpick_wrapper, '', 'div')
object.mod('color_select', '', colorpick_wrapper, '', 'div')
object.mod('color_opacity', '', colorpick_wrapper, '', 'div')

#wrapper for color show and opacity stepper
object.mod('colorpick_color_show_and_stepper', '', color_field_picker_sample, '', 'div')

#properties of show and stepper

object.mod('colorpick_color_show_text', '', colorpick_color_show_and_stepper, 'Color', 'div')
object.mod('colorpick_color_show_text_input', '', colorpick_color_show_and_stepper, '', 'input/text')

#this is opacity stepper
object.mod('colorpick_color_opacity_stepper', '', colorpick_color_show_and_stepper, '', 'div')


#steppers
object.basic('opacity_stepper', 'opacity_stepper_wrapper_class', colorpick_color_opacity_stepper)
$(opacity_stepper).append "<input type=\'text\' id= \'opacity_stepper_id\' class=\'opacity_stepper_input\' value=\'0\'>"
#inc and dec
object.basic('opacity_stepper_inc', 'inc_stepper', opacity_stepper)
object.basic('opacity_stepper_dec', 'dec_stepper', opacity_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal


object.mod('colorpick_common', '', color_field_picker_sample, '', 'div')
# the common color selections like black white and transparent
# this should be better desinged as divs but for barebone design i use button

object.mod('colorpick_common_white', '', colorpick_common, 'W', 'button')
object.mod('colorpick_common_black', '', colorpick_common, 'B', 'button')
object.mod('colorpick_common_opacity', '', colorpick_common, 'O', 'button')

object.mod('colorpick_ok_button', '', color_field_picker_sample, 'Ok', 'button')

##to hide when not in use
#$(colorpick_ok_button).on "click", ->
# $(color_field_picker_sample).hide()

#changed to input text for show area
object.mod('color_field_show', '', color_field, '', 'input/text')



## Implementaion with click problem
##test_function = -> alert 'this works!'
##test_function = ->
#closeColorPick = ->
#  $(color_field_picker_sample).hide()
#
#$(color_field_picker).on "click", ->
#  $(color_field_picker_sample).toggle()
#
#$(color_field_picker_sample).on "click", ->
#  $(color_field_picker_sample).toggle()
#
#$(color_field_picker_sample).on "mouseover", ->
#  $(color_field_picker_sample).toggle()
#
#$(colorpick_ok_button).on "click", ->
#  closeColorPick();






#angle_field
object.mod('angle_field', '', box_shadow_advanced_window, '', 'div')
#angle_field components
object.mod('angle_text', '', angle_field, 'ANGLE', 'span')
object.mod('angle_circular_selector_area', '', angle_field, '', 'div')
object.mod('angle_stepper_wrapper', '', angle_field, '', 'div')
#steppers
object.basic('angle_stepper', 'angle_stepper_wrapper_class', angle_stepper_wrapper)
$(angle_stepper).append "<input type=\'text\' id= \'angle_stepper_id\' class=\'angle_stepper_input\' value=\'90\'>"
#inc and dec
object.basic('angle_stepper_inc', 'inc_stepper', angle_stepper)
object.basic('angle_stepper_dec', 'dec_stepper', angle_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal
#distance_field
object.mod('distance_field', '', box_shadow_advanced_window, '', 'div')
#distance_field properties
object.mod('distance_field_text', '', distance_field, 'Dis', 'span')
object.mod('distance_field_slider_wrapper', '', distance_field, '', 'div')
#slider properties
object.mod('distance_field_slider', '', distance_field_slider_wrapper, '', 'div')
object.mod('distance_field_slider_thumb', '', distance_field_slider, '', 'div')
#stepper properties
object.mod('distance_stepper_wrapper', '', distance_field, '', 'div')

object.basic('distance_stepper', 'distance_stepper_wrapper_class', distance_stepper_wrapper)
$(distance_stepper).append "<input type=\'text\' id= \'distance_stepper_id\' class=\'distance_stepper_input\' value=\'1\'>"
#inc and dec
object.basic('distance_stepper_inc', 'inc_stepper', distance_stepper)
object.basic('distance_stepper_dec', 'dec_stepper', distance_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal


object.mod('blur_field', '', box_shadow_advanced_window, '', 'div')
#blur properties


object.mod('blur_field_text', '', blur_field, 'Blur', 'span')
object.mod('blur_field_slider_wrapper', '', blur_field, '', 'div')
#slider properties
object.mod('blur_field_slider', '', blur_field_slider_wrapper, '', 'div')
object.mod('blur_field_slider_thumb', '', blur_field_slider, '', 'div')
#stepper properties
object.mod('blur_stepper_wrapper', '', blur_field, '', 'div')

object.basic('blur_stepper', 'blur_stepper_wrapper_class', blur_stepper_wrapper)
$(blur_stepper).append "<input type=\'text\' id= \'blur_stepper_id\' class=\'blur_stepper_input\' value=\'1\'>"
#inc and dec
object.basic('blur_stepper_inc', 'inc_stepper', blur_stepper)
object.basic('blur_stepper_dec', 'dec_stepper', blur_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal

#size_field
object.mod('size_field', '', box_shadow_advanced_window, '', 'div')

#size_field properties


object.mod('size_field_text', '', size_field, 'Size', 'span')
object.mod('size_field_slider_wrapper', '', size_field, '', 'div')
#slider properties
object.mod('size_field_slider', '', size_field_slider_wrapper, '', 'div')
object.mod('size_field_slider_thumb', '', size_field_slider, '', 'div')
#stepper properties
object.mod('size_stepper_wrapper', '', size_field, '', 'div')

object.basic('size_stepper', 'size_stepper_wrapper_class', size_stepper_wrapper)
$(size_stepper).append "<input type=\'text\' id= \'size_stepper_id\' class=\'size_stepper_input\' value=\'1\'>"
#inc and dec
object.basic('size_stepper_inc', 'inc_stepper', size_stepper)
object.basic('size_stepper_dec', 'dec_stepper', size_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal

# provide a seperating space
object.mod('bs_advanced_panel_ok_button', '', box_shadow_advanced_window, 'OK', 'button')

#click OK to close the adv panel
$(bs_advanced_panel_ok_button).on "click", ->
  $(box_shadow_advanced_window).hide()

##to keep colorpicker even if we click on the shadow panel
#$(box_shadow_advanced_window).on  "click", ->
#  $(color_field_picker_sample).toggle()







object.mod('bs_text', '', box_shadow, 'Box Shadow', 'span')

object.mod('bs_buttons', '', box_shadow, '', 'ul') #list method is possible and div is also possible since its button
object.mod('bs_button_one', '', bs_buttons, '', 'button')
object.mod('bs_button_two', '', bs_buttons, '', 'button')
object.mod('bs_button_three', '', bs_buttons, '', 'button')
object.mod('bs_button_four', '', bs_buttons, '', 'button')

object.mod('bs_show', '', box_shadow, '', 'div') #the selections showing part



closeColorPick = ->
  $(color_field_picker_sample).hide()

$(color_field_picker).on "click", ->
  $(color_field_picker_sample).toggle()

$(color_field_picker_sample).on "click", ->
  $(color_field_picker_sample).toggle()
#
#$(color_field_picker_sample).on "mouseover", ->
#  $(color_field_picker_sample).toggle()


$(colorpick_ok_button).on "click", ->
  closeColorPick();



# click to activate advanced panel

$(box_shadow_advanced_window).hide()
$(bs_buttons).on "click", ->
  $(box_shadow_advanced_window).toggle()

## click on anywhere else other than bs_buttons to hide the advanced panel
#$(box_shadow_advanced_window).on "click", ->
#  $(box_shadow_advanced_window).hide()


#seperation
#object.mod('horizontal_rule_background', '', text_shadow, '', 'hr')

#text shadow part

#object.adv(rb5_ts_id, '', text_shadow, '', 'div')

# the popup scrollbox to select further options like angle and color
object.mod('text_shadow_advanced_window', '', text_shadow, '', 'div')
#advanced text shadow panel proertios
#color filed
object.mod('ts_color_field', '', text_shadow_advanced_window, '', 'div')
#advanced color field properties
object.mod('ts_color_field_text', '', ts_color_field, 'Color', 'span')
object.mod('ts_color_field_picker', '', ts_color_field, '', 'div')
object.mod('ts_color_field_show', '', ts_color_field, '', 'div')
object.mod('ts_color_field_picker_sample', '', text_shadow_advanced_window, '', 'div')
#object.mod('ts_colorpick_wrapper', '', text_shadow_advanced_window, '', 'div')
#child of ts_colorpick_wrapper
#object.mod('ts_color_hue', '', ts_color_field_picker_wrapper, '', 'div')
#object.mod('ts_color_select', '', ts_color_field_picker_wrapper, '', 'div')
#object.mod('ts_color_opacity', '', ts_color_field_picker_wrapper, '', 'div')
#object.mod('ts_colorpick_color_show_and_stepper', '', ts_color_field_picker_wrapper, '', 'div')

#angle field
object.mod('ts_angle_field', '', text_shadow_advanced_window, '', 'div')
#angle field properties
object.mod('ts_angle_text', '', ts_angle_field, 'Angle', 'div')
object.mod('ts_angle_circular_selector_area', '', ts_angle_field, '', 'div')
object.mod('ts_angle_stepper_wrapper', '', ts_angle_field, '', 'div')
object.mod('ts_angle_stepper', '', ts_angle_stepper_wrapper, '', 'div')

object.mod('ts_distance_field', '', text_shadow_advanced_window, '', 'div')
#distance filed properties
object.mod('ts_distance_field_text', '', ts_distance_field, 'D', 'div')
object.mod('ts_distance_slider_wrapper', '', ts_distance_field, '', 'div')
#children of slider wrappers
object.mod('ts_distance_field_slider', '', ts_distance_slider_wrapper, '', 'div')
object.mod('ts_distance_field_slider_thumb', '', ts_distance_field_slider, '', 'div')

object.mod('ts_distance_stepper_wrapper', '', ts_distance_field, '', 'div')
object.mod('ts_distance_field_slider_thumb', '', ts_distance_field, '', 'div')


#steppers

object.basic('ts_distance_stepper', 'ts_distance_stepper_wrapper_class', ts_distance_stepper_wrapper)
$(ts_distance_stepper).append "<input type=\'text\' id= \'ts_distance_stepper_id\' class=\'ts_distance_stepper_input\' value=\'1\'>"
#inc and dec
object.basic('ts_distance_stepper_inc', 'inc_stepper', ts_distance_stepper)
object.basic('ts_distance_stepper_dec', 'dec_stepper', ts_distance_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal


object.mod('ts_blur_field', '', text_shadow_advanced_window, '', 'div')
#blur filed propeteis
object.mod('ts_blur_field_text', '', ts_blur_field, 'Blur', 'div')
object.mod('ts_blur_field_slider_wrapper', '', ts_blur_field, '', 'div')
object.mod('ts_blur_field_slider', '', ts_blur_field_slider_wrapper, '', 'div')
object.mod('ts_blur_field_slider_thumb', '', ts_blur_field_slider_wrapper, '', 'div')
object.mod('ts_blur_stepper_wrapper', '', ts_blur_field, '', 'div')
#object.mod('ts_blur_stepper', '', ts_blur_field, '', 'div')


#
##steppers
#
object.basic('ts_blur_stepper', 'ts_blur_stepper_wrapper_class', ts_blur_stepper_wrapper)
$(ts_blur_stepper).append "<input type=\'text\' id= \'ts_blur_stepper_id\' class=\'ts_blur_stepper_input\' value=\'1\'>"
#inc and dec
object.basic('ts_blur_stepper_inc', 'inc_stepper', ts_blur_stepper)
object.basic('ts_blur_stepper_dec', 'dec_stepper', ts_blur_stepper)
# stepper function
$(".inc_stepper").on "click", ->
  $inc = $(this)
  oldValue = $inc.parent().find("input").val()
  newVal = parseFloat(oldValue) + 1
  $inc.parent().find("input").val newVal
$(".dec_stepper").on "click", ->
  # Don't allow decrementing below zero
  $dec = $(this)
  oldValue = $dec.parent().find("input").val()
  if oldValue > 0
    newVal = parseFloat(oldValue) - 1
    $dec.parent().find("input").val newVal

object.mod('ts_advanced_panel_ok_button', '', text_shadow_advanced_window, 'Ok', 'button')


object.mod('ts_text', '', text_shadow, 'Text Shadow', 'span')

object.mod('ts_buttons', '', text_shadow, '', 'div')
object.mod('ts_button_one', '', ts_buttons, '', 'button')
object.mod('ts_button_two', '', ts_buttons, '', 'button')
object.mod('ts_button_three', '', ts_buttons, '', 'button')

object.mod('ts_show', '', text_shadow, '', 'div')


# click to activate advanced panel

$(text_shadow_advanced_window).hide()
$(ts_buttons).on "click", ->
  $(text_shadow_advanced_window).toggle()

# click on anywhere else other than ts_buttons to hide the advanced panel
$(text_shadow_advanced_window).on "click", ->
  $(text_shadow_advanced_window).hide()


$(rp_block_top_5).on "click", ->
  $(rp_block_content_5).slideToggle(250)
  $(rp_block_top_5).toggleClass('slideup')


###
 6th Block
###

$(prop_panel).append(rp_block_6)

object.basic('rp_block_top_6', 'rp_block_top', rp_block_6)
object.basic('rp_block_content_6', 'rp_block_content_class', rp_block_6)
object.mod('effects_text', '', rp_block_top_6, 'EFFECTS', 'span')

rb6_element_id = ['opacity', 'transitions', 'transforms']

object.adv(rb6_element_id, '', rp_block_content_6, '', 'div')

#opacity
object.mod('opacity_text', '', opacity, 'Opacity', 'span')
object.mod('opacity_slider', '', opacity, '', 'div')
object.mod('opacity_drop', '', opacity, '', 'div')

#transitions
object.mod('transitions_text', '', transitions, 'Transitions', 'span')

object.mod('tr_buttons', '', transitions, '', 'ul') #list method is possible and div is also possible since its button
object.mod('tr_button_one', '', tr_buttons, '', 'button')

object.mod('tr_show', '', transitions, '', 'div')


#transfroms
object.mod('transfrom_text', '', transforms, 'Transforms', 'span')
object.mod('trm_buttons', '', transforms, '', 'div')
object.mod('trm_button_one', '', trm_buttons, '', 'button')
object.mod('trm_button_two', '', trm_buttons, '', 'button')
object.mod('trm_button_three', '', trm_buttons, '', 'button')

object.mod('trm_show', '', transforms, '', 'div')

$(rp_block_top_6).on "click", ->
  $(rp_block_content_6).slideToggle(250)
  $(rp_block_top_6).toggleClass('slideup')





object.box('test','small_box',editor)
