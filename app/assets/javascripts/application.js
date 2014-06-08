// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require split-pane
//= require_tree .

$(function() {
    $(".split-pane").splitPane();

    // window#resizeじゃないよ
    //$(window).resize(function() {
    //    $(".table").each(function() {
    //        var $table = $(this);
    //        var paneHeight = $table.parent().height();
    //        var theadHeight = $table.find("thead").height();
    //        var theadWidth = $table.find("thead").width();
    //        $table.find("tbody").height(paneHeight - theadHeight);
    //        var thList = $table.find("thead th");
    //        thList.each(function() {
    //            $(this).width(theadWidth / thList.length);
    //        });
    //        $table.find("tbody tr").each(function() {
    //            $(this).find("td").each(function() {
    //                $(this).width(theadWidth / thList.length);
    //            });
    //        });
    //    });
    //});
});
