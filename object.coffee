


class core
  constructor : (@name)->
#,@id,@clss
#      console.log("height = " + ht+'px')
#    $(".genob").css("height",'100px')
    $('<div></div>',{id: 'idname',class :'genob'}).appendTo('#editor')

#  console.log $('#id').height()

#  @height: ()->
#        ht = $('.width_input').val()
#        $("@id").css("height",ht + 'px')

value = 0 ;

$(".inob").on "click", ->
#
#     value = isNaN(value) ? 0 : value;
      value++;
      testname = 'test' + '#{value}'
      testname = new core 'test'
#      alert testname.name
#      test.height(500)

      $(this).addClass("obstyle")
      $(this).siblings('.inob').removeClass('obstyle')


      $('.genob').draggable({containment: 'parent'})
                 .addClass("teststr")

      $("#editor").on "click", ".genob", ->
#        current_element = $(this)
        console.log testname



##       $('.width_input').change ->
#            ht = $('.width_input').val()
#            console.log(ht)
#            testname.height_x(ht)
#            console.log testname
















#      test.height(testx)





#      test.width(testx)


#
#  return $('#teststr')

#$('#editor').on("click",".genob",->
#                    console.log $(this).attr("id")
#
#                  )

#$('#editor').on "click",".genob", (event) ->
#  event.preventDefault();
#  console.log "test"
#  wt = '500px';
#  $(this).css('width',wt);
#  console.log "test"










# console.log $(current_element).height()
#  inh = $(current_element).innerHeight()
#  inw = $(current_element).innerWidth()
#  console.log inh
#  console.log inw
#  inhp = $(current_element).outerHeight(true)
#  inwp = $(current_element).outerWidth(true)
#  console.log inhp
#  console.log inwp
#  console.log inhp-inh
#  console.log inwp-inw
#  pos = $(current_element).position()
#  console.log "left"+pos.left
#  console.log "right"+ pos.top
#
#
#



