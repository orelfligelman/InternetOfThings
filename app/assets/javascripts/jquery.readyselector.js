(function ($) {
    var ready = $.fn.ready;
    $.fn.ready = function (fn) {
        if (this.context === undefined) {
            // The $().ready(fn) case.
            ready(fn);
        } else if (this.selector) {
            ready($.proxy(function(){
                $(this.selector, this.context).each(fn);
            }, this));
        } else {
            ready($.proxy(function(){
                $(this).each(fn);
            }, this));
        }
    }
})(jQuery);
$('.thermometer.index').ready(function() {
    console.log("Page-specific JavaScript on the home/index page.");
});