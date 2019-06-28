$(function(){
    $.ajax({
        url:'main_header.html',
        type:'get',
        //dataType:"jsonp",
        //jsonp:"jsonpCallback",
        success:function(header){
            $(header).replaceAll('header');
            $(`<link rel='stylesheet' href="css/header.css">`).appendTo('head')
        }
    })
})