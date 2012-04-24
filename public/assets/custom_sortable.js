$(document).ready(function() {
  change_value();

  $( "#sortable" ).sortable({
      placeholder: "ui-state-highlight"
  });
  $( "#sortable" ).disableSelection();
    
  // $("#sortable").sortable();
  
  $('.items').mouseover(function(){  
    change_value ();
  });
});

function change_value ()
{
  var items = new Array();
  var item;

  $('.items').each(function(){
      item = $(this).attr('id');
      items.push(item);
    });
  $('#order_field').attr('value', items);
}