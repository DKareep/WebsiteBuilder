(function($) {
    jQuery.fn.extend({
        crossBrowserScroll: function(options) {
            var defaults = {
                width : 'auto',                         //width of scroll area
                height : '500px',                       //height of scroll area
                size : '5px',                           //width of scroll bar
                color: '#000',                          //scroll bar color
                position : 'right',                     //scroll bar position
                distance : '1px',                       //distance between side edge and scroll bar
                start : 'top',                          //default scroll position
                opacity : .4,                           //scroll bar opacity
                barVisibleAlways : false,              //always ON scroll bar
                barFadeOut : false,                    //hide the scroll bar when hovering over it
                trackVisibleAlways : false,            //track visibility
                trackColor : '#333',                    //track color
                trackOpacity : .2,                      //track opacity
                trackDraggable : true,                 //because we use jQuery UI Draggable
                trackClass : 'crossBrowserScrolltrack', //default CSS class
                barClass : 'crossBrowserScrollBar',     //default CSS class
                wrapperClass : 'crossBrowserScrollDiv', //default CSS class
                pageScroll : false,                    //page scroll disabled
                wheelMove : 5,                          //scroll amount
                borderRadius: '5px',                    //border radius of scroll bar
                trackBorderRadius : '5px'               //border radius of track
            };

            var opt = $.extend(defaults, options);      //default options are inherited to the variable opt

            //doing this to all events
            this.each(function(){
                var ifOverPanel, ifOverBar, ifDrag, qHide,
                    barHeight, percentageScroll, scrollEnd,
                    topBottomDivs = '<div></div>',
                    minBarHeight = 30,
                    releaseScroll = false;

                var ch = $(this);

                //not binding it again
                if (ch.parent().hasClass(opt.wrapperClass))
                {
                    var offset = ch.scrollTop();  //last bar position
                    bar = ch.parent().find('.' + opt.barClass);  //find default bar and track
                    track = ch.parent().find('.' + opt.trackClass);

                    calBarHeight();  //to find bar height

                    if ($.isPlainObject(options))
                    {
                        if ( 'height' in options && options.height == 'auto' ) {      //height of parent is auto its inherited to child ch
                            ch.parent().css('height', 'auto');
                            ch.css('height', 'auto');
                            var height = ch.parent().parent().height();
                            ch.parent().css('height', height);
                            ch.css('height', height);
                        }

                        if ('scrollTo' in options)
                        {
                            offset = parseInt(opt.scrollTo); //move to a point
                        }
                        else if ('scrollBy' in options)
                        {
                            offset += parseInt(opt.scrollBy);  //move by value pixels
                        }
                        else if ('destroy' in options)
                        {
                            bar.remove();  //remove all bar track and child ch wrapper
                            track.remove();
                            ch.unwrap();
                            return;
                        }

                        scrollingContent(offset, false, true); //scroll content by the offset
                    }
                    return;
                }

                opt.height = (opt.height == 'auto') ? ch.parent().height() : opt.height;  //set height to the parent height

                var fullWrapper = $(topBottomDivs)      // wrapping content
                    .addClass(opt.wrapperClass)
                    .css({
                        position: 'relative',
                        overflow: 'hidden',
                        width: opt.width,
                        height: opt.height
                    });

                ch.css({                     //update style for div
                    overflow: 'hidden',
                    width: opt.width,
                    height: opt.height
                });

                var track = $(topBottomDivs)             //create track
                    .addClass(opt.trackClass)
                    .css({
                        width: opt.size,
                        height: '100%',
                        position: 'absolute',
                        top: 0,
                        display: (opt.barVisibleAlways && opt.trackVisibleAlways) ? 'block' : 'none',
                        'border-radius': opt.trackBorderRadius,
                        background: opt.trackColor,
                        opacity: opt.trackOpacity,
                        zIndex: 90
                    });

                var bar = $(topBottomDivs)             //create scrollbar
                    .addClass(opt.barClass)
                    .css({
                        background: opt.color,
                        width: opt.size,
                        position: 'absolute',
                        top: 0,
                        opacity: opt.opacity,
                        display: opt.barVisibleAlways ? 'block' : 'none',
                        'border-radius' : opt.borderRadius,
                        BorderRadius: opt.borderRadius,
                        MozBorderRadius: opt.borderRadius,
                        WebkitBorderRadius: opt.borderRadius,
                        zIndex: 99
                    });

                var positionCss = (opt.position == 'right') ? { right: opt.distance } : { left: opt.distance }; //set position
                track.css(positionCss);
                bar.css(positionCss);

                ch.wrap(fullWrapper);  //wrap all

                ch.parent().append(bar); //append to parent div the new bar and track
                ch.parent().append(track);

                if (opt.trackDraggable)     //  dependent on the jqueryUI
                {
                    bar.bind("mousedown", function(e) {
                        var $doc = $(document);
                        ifDrag = true;
                        t = parseFloat(bar.css('top'));
                        pageY = e.pageY;

                        $doc.bind("mousemove.cbscroll", function(e){
                            currTop = t + e.pageY - pageY;
                            bar.css('top', currTop);
                            scrollingContent(0, bar.position().top, false);// scroll content
                        });

                        $doc.bind("mouseup.cbscroll", function(e) {
                            ifDrag = false;barHide();
                            $doc.unbind('.cbscroll');
                        });
                        return false;
                    }).bind("selectstart.cbscroll", function(e){
                            e.stopPropagation();
                            e.preventDefault();
                            return false;
                        });
                }

                track.hover(function()   //over track
                {
                    barShow();
                }, function(){
                    barHide();
                });


                bar.hover(function() //over bar
                {
                    ifOverBar = true;
                }, function(){
                    ifOverBar = false;
                });

                ch.hover(function()  //show bar on hover over parent
                {
                    ifOverPanel = true;
                    barShow();
                    barHide();
                }, function(){
                    ifOverPanel = false;
                    barHide();
                });

                calBarHeight();    //initial bar height


                if (opt.start === 'bottom')   //check start position
                {
                    bar.css({ top: ch.outerHeight() - bar.outerHeight() });  //scroll content to bottom
                    scrollingContent(0, true);
                }
                else if (opt.start !== 'top')
                {
                    scrollingContent($(opt.start).position().top, null, true);  //assign jQuery selector

                    if (!opt.barVisibleAlways)         //bar stays hidden always
                    { bar.hide(); }
                }

                attachWheel();       //attach scroll events  through this function

                function onWheel(e)
                {
                    if (!ifOverPanel)   //use mouse wheel only when mouse is over
                    { return;
                    }

                    var e = e || window.event;  //attached event

                    var delta = 0;
                    if (e.wheelDelta) { delta = -e.wheelDelta/120; }
                    if (e.detail) { delta = e.detail / 3; }

                    var target = e.target || e.srcTarget || e.srcElement;
                    if ($(target).closest('.' + opt.wrapperClass).is(ch.parent())) {
                        //scroll content
                        scrollingContent(delta, true);
                    }

                    //stop window scroll
                    if (e.preventDefault && !releaseScroll) { e.preventDefault(); }
                    if (!releaseScroll) { e.returnValue = false; }
                }

                function scrollingContent(y, ifWheel, ifJump)
                {
                    releaseScroll = false;
                    var delta = y;
                    var maxTop = ch.outerHeight() - bar.outerHeight();

                    if (ifWheel)
                    {
                        delta = parseInt(bar.css('top')) + y * parseInt(opt.wheelMove) / 100 * bar.outerHeight();      //move bar with mouse wheel event
                        delta = Math.min(Math.max(delta, 0), maxTop);  //move bar and making sure it does not go out of the space
                        delta = (y > 0) ? Math.ceil(delta) : Math.floor(delta); //fractional change to scroll position should be avoided so flooring of delta is done for clarity
                        bar.css({ top: delta + 'px' });     //scroll the scrollbar
                    }

                    percentageScroll = parseInt(bar.css('top')) / (ch.outerHeight() - bar.outerHeight());  //calculated actual scroll amount
                    delta = percentageScroll * (ch[0].scrollHeight - ch.outerHeight());

                    if (ifJump)
                    {
                        delta = y;
                        var offsetTop = delta / ch[0].scrollHeight * ch.outerHeight();
                        offsetTop = Math.min(Math.max(offsetTop, 0), maxTop);
                        bar.css({ top: offsetTop + 'px' });
                    }

                    ch.scrollTop(delta);    //scroll content

                    ch.trigger('cbscrolling', ~~delta);   //trigger scrolling event

                    barShow();  //bar is visibile

                    barHide();    //trigger hide when scrolling is stopped
                }

                function attachWheel()
                {
                    if (window.addEventListener)
                    {
                        this.addEventListener('DOMMouseScroll', onWheel, false );
                        this.addEventListener('mousewheel', onWheel, false );
                        this.addEventListener('MozMousePixelScroll', onWheel, false );
                    }
                    else
                    {
                        document.attachEvent("onmousewheel", onWheel)
                    }
                }

                function calBarHeight()
                {
                    barHeight = Math.max((ch.outerHeight() / ch[0].scrollHeight) * ch.outerHeight(), minBarHeight); //calculate scrollbar height and ensure not too small
                    bar.css({ height: barHeight + 'px' });

                    var display = barHeight == ch.outerHeight() ? 'none' : 'block';  //hide scrollbar if content is not long enough
                    bar.css({ display: display });

                }

                function barShow()
                {
                    calBarHeight();
                    clearTimeout(qHide);


                    if (percentageScroll == ~~percentageScroll)  //when bar reached top/bottom
                    {
                        //release wheel
                        releaseScroll = opt.pageScroll;

                        //trigger event
                        if (scrollEnd != percentageScroll)
                        {
                            var msg = (~~percentageScroll == 0) ? 'top' : 'bottom';
                            ch.trigger('cbscroll', msg);
                        }
                    }
                    else
                    {
                        releaseScroll = false;
                    }
                    scrollEnd = percentageScroll;

                    //show only if bar height is > than child outer height..or content area is small
                    if(barHeight >= ch.outerHeight()) {
                        //allow window scroll
                        releaseScroll = true;
                        return;
                    }
                    bar.stop(true,true).fadeIn('fast');
                    if (opt.trackVisibleAlways) { track.stop(true,true).fadeIn('fast'); }
                }

                function barHide()
                {
                    //only hide when options allow it
                    if (!opt.barVisibleAlways)
                    {
                        qHide = setTimeout(function(){
                            if (!(opt.barFadeOut && ifOverPanel) && !ifOverBar && !ifDrag)
                            {
                                bar.fadeOut('slow');
                                track.fadeOut('slow');
                            }
                        }, 1000);
                    }
                }

            });

            //maintain chainability of scrolling
            return this;
        }
    });

    jQuery.fn.extend({
        cbscroll: jQuery.fn.crossBrowserScroll
    });

})(jQuery);

