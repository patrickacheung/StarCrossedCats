// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


var ready = function (){
  $.getJSON('http://star-api.herokuapp.com/api/v1/stars/Sun', function(data){
    var items = [];
    $.each(data, function(key, val) {
        items.push(key + " ");
        items.push(val);
        $(".star_container").append("<li style='list-style-type: none;'>"+items+"</li>");
        items = [];
    });
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
