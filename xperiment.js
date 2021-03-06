//@ sourceMappingURL=xperiment.map
// Generated by CoffeeScript 1.6.1
(function() {
  var child, contents, dev, devarray, divgen, i, id, idarray, insert, lp, pad, rp, _i, _j, _k, _l, _m;

  divgen = (function() {

    function divgen() {}

    divgen.prototype.create = function(id, clss, parent) {
      var $divcr;
      this.id = id;
      this.clss = clss;
      this.parent = parent;
      if (this.clss) {
        $divcr = "<div id= " + this.id + " class = " + this.clss + "></div>";
        return $(this.parent).append($divcr);
      } else {
        $divcr = "<div id= " + this.id + " ></div>";
        return $(this.parent).append($divcr);
      }
    };

    return divgen;

  })();

  document.write("<div id = left_panel></div>");

  lp = $('#left_panel');

  child = new divgen('child');

  child.create('left_panel_main', '', lp);

  child.create('left_panel_object', '', lp);

  for (i = _i = 1; _i <= 9; i = _i += 1) {
    child.create('lpdv_' + i, 'divider', left_panel_main);
  }

  for (i = _j = 1; _j <= 6; i = _j += 1) {
    child.create('icon_' + i, 'icon', left_panel_main);
  }

  $(".icon").click(function() {
    $(this).addClass('iconactive');
    $(this).siblings('.icon').removeClass('iconactive');
    return $(this).show('#lpo_container');
  });

  child.create('helper', '', left_panel_object);

  child.create('lpo_container', '', left_panel_object);

  for (i = _k = 1; _k <= 12; i = _k += 1) {
    child.create('lpo_' + i, 'object', lpo_container);
  }

  document.write("<div id =right_panel></div>");

  rp = $('#right_panel');

  child.create('rp_tab', '', rp);

  for (i = _l = 1; _l <= 3; i = _l += 1) {
    child.create('rp_block_' + i, '', rp);
  }

  for (i = _m = 1; _m <= 3; i = _m += 1) {
    child.create('tab_' + i, '', rp_tab);
  }

  child.create('rp_block_top_1', 'rp_block_top', rp_block_1);

  child.create('rp_block_content_1', 'rp_block_content_class', rp_block_1);

  child.create('rp_block_top_2', 'rp_block_top', rp_block_2);

  child.create('rp_block_content_2', 'rp_block_content_class', rp_block_2);

  child.create('rp_block_top_3', 'rp_block_top', rp_block_3);

  child.create('rp_block_content_3', 'rp_block_content_class', rp_block_3);

  dev = (function() {

    function dev() {}

    dev.prototype.create = function(id, clss, parent, content, tag) {
      var $paracr;
      this.id = id;
      this.clss = clss;
      this.parent = parent;
      this.content = content;
      this.tag = tag;
      if (this.clss) {
        $paracr = "<" + this.tag + " id= " + this.id + " class = " + this.clss + ">" + this.content + "</" + this.tag + ">";
        return $(this.parent).append($paracr);
      } else {
        $paracr = "<" + this.tag + " id= " + this.id + " >" + this.content + "</" + this.tag + ">";
        return $(this.parent).append($paracr);
      }
    };

    return dev;

  })();

  pad = new dev;

  pad.create('testpara', '', tab_1, 'Properties', 'p');

  pad.create('testpara', '', tab_2, 'Layer', 'p');

  pad.create('testpara', '', tab_3, 'Library', 'p');

  devarray = (function() {

    function devarray() {}

    devarray.prototype.create = function(id, clss, parent, content, tag) {
      var $paracr, elem, _len, _len1, _n, _o, _ref, _ref1, _results, _results1;
      this.id = id;
      this.clss = clss;
      this.parent = parent;
      this.content = content;
      this.tag = tag;
      if (this.clss) {
        _ref = this.id;
        _results = [];
        for (_n = 0, _len = _ref.length; _n < _len; _n++) {
          elem = _ref[_n];
          $paracr = "<" + this.tag + " id= " + elem + " class = " + this.clss + ">" + this.content + "</" + this.tag + ">";
          $(this.parent).append($paracr);
          _results.push(j++);
        }
        return _results;
      } else {
        _ref1 = this.id;
        _results1 = [];
        for (_o = 0, _len1 = _ref1.length; _o < _len1; _o++) {
          elem = _ref1[_o];
          $paracr = "<" + this.tag + " id= " + elem + " >" + this.content + "</" + this.tag + ">";
          _results1.push($(this.parent).append($paracr));
        }
        return _results1;
      }
    };

    return devarray;

  })();

  idarray = new devarray;

  id = ['position_text', 'test_2'];

  contents = ['POSITION', 'advaced_text'];

  idarray.create(id, '', rp_block_top_1, contents, 'p');

  insert = (function() {

    function insert() {}

    insert.prototype.create = function(content, parent) {
      this.content = content;
      this.parent = parent;
    };

    return insert;

  })();

}).call(this);
