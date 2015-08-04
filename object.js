//@ sourceMappingURL=object.map
// Generated by CoffeeScript 1.6.1
(function() {
  var core, value;

  core = (function() {

    function core(name) {
      this.name = name;
      $('<div></div>', {
        id: 'idname',
        "class": 'genob'
      }).appendTo('#editor');
    }

    return core;

  })();

  value = 0;

  $(".inob").on("click", function() {
    var testname;
    value++;
    testname = 'test' + '#{value}';
    testname = new core('test');
    $(this).addClass("obstyle");
    $(this).siblings('.inob').removeClass('obstyle');
    $('.genob').draggable({
      containment: 'parent'
    }).addClass("teststr");
    return $("#editor").on("click", ".genob", function() {
      return console.log(testname);
    });
  });

}).call(this);
