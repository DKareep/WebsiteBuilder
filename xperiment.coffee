class divgen
  constructor: () ->
  create: (@id, @clss, @parent) ->
    if @clss
      $divcr = "<div id= #{@id} class = #{@clss}></div>"
      $(@parent).append($divcr)
    else
      $divcr = "<div id= #{@id} ></div>"
      $(@parent).append($divcr)

document.write("<div id = left_panel></div>")
lp = $('#left_panel')

child = new divgen 'child'

child.create('left_panel_main', '', lp)
child.create('left_panel_object', '', lp)

for i in [1..9] by 1
  child.create('lpdv_' + i, 'divider', left_panel_main)
for i in [1..6] by 1
  child.create('icon_' + i, 'icon', left_panel_main)

$(".icon").click(
  ->
    $(this).addClass('iconactive')
    $(this).siblings('.icon').removeClass('iconactive')
    $(this).show('#lpo_container')
)

child.create('helper', '', left_panel_object)
child.create('lpo_container', '', left_panel_object)

for i in [1..12] by 1
  child.create('lpo_' + i, 'object', lpo_container)

document.write("<div id =right_panel></div>")
rp = $('#right_panel')

child.create('rp_tab', '', rp)


for i in [1..3] by 1
  child.create('rp_block_' + i, '', rp)


for i in [1..3] by 1
  child.create('tab_' + i, '', rp_tab)


child.create('rp_block_top_1', 'rp_block_top', rp_block_1)
child.create('rp_block_content_1', 'rp_block_content_class', rp_block_1)
child.create('rp_block_top_2', 'rp_block_top', rp_block_2)
child.create('rp_block_content_2', 'rp_block_content_class', rp_block_2)
child.create('rp_block_top_3', 'rp_block_top', rp_block_3)
child.create('rp_block_content_3', 'rp_block_content_class', rp_block_3)


class dev
  constructor: () ->
  create: (@id, @clss, @parent, @content, @tag) ->
    if @clss
      $paracr = "<#{@tag} id= #{@id} class = #{@clss}>#{@content}</#{@tag}>"
      $(@parent).append($paracr)
    else
      $paracr = "<#{@tag} id= #{@id} >#{@content}</#{@tag}>"
      $(@parent).append($paracr)


pad = new dev



pad.create('testpara', '', tab_1, 'Properties', 'p')
pad.create('testpara', '', tab_2, 'Layer', 'p')
pad.create('testpara', '', tab_3, 'Library', 'p')


#pad.create(['testpara'],'',rp_block_top_1,'','div')




#pad.create('position_text', '', rp_block_top_1, 'POSITION', 'p')
#pad.create('advanced_div', '', rp_block_top_1, '', 'div')
#pad.create('advaced_text', '', advanced_div, 'Advanced', 'p')
#pad.create('advaced_toggle', '', advanced_div, '', 'div')
#
#pad.create('background_text', '', rp_block_top_2, 'BACKGROUND', 'p')
#pad.create('border_text', '', rp_block_top_3, 'BORDER', 'p')
#
#
#pad.create('resize', '', rp_block_content_1, '', 'div')
#
#pad.create('property_panel','',rp_block_content_1,'','div')
#
#pad.create('dimension','',property_panel,'','div')
#pad.create('down','',dimension,'','div')
#
#pad.create('width_container','',property_panel,'','div')
#pad.create('width_text','',width_container,'Width','p')
#pad.create('width_div','',width_container,'','div')
#
#
#
#
#pad.create('height_container','',property_panel,'','div')
#pad.create('height_text','',height_container,'Height','p')
#pad.create('height_div','',height_container,'','div')

#pad.create('height','',rp_block_content_1,'','div')
#
#pad.create('width_text','',Width,'Width','p')
#pad.create('width_div','','','div')


class devarray
  constructor: () ->
  create: (@id, @clss, @parent, @content, @tag) ->
    if @clss
      for elem in @id

        $paracr = "<#{@tag} id= #{elem} class = #{@clss}>#{@content}</#{@tag}>"
        $(@parent).append($paracr)
        j++
    else

      for elem in @id
        $paracr = "<#{@tag} id= #{elem} >#{@content}</#{@tag}>"
        $(@parent).append($paracr)


idarray = new devarray


id = ['position_text','test_2']
contents = ['POSITION','advaced_text']

idarray.create(id,'',rp_block_top_1,contents,'p')


class insert
  constructor : () ->
  create : (@content,@parent) ->




