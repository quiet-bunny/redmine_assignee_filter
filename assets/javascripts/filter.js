$(function(){
  var input = $('<input placeholder="Assignee filter"></input>');
  var target = $("#issue_assigned_to_id");
  input.insertBefore(target);
  input.on("keyup", function(e){
    target.find("option").each(function(){
      if( new RegExp(input.val(), "i").test($(this).text()) ){
        $(this).show().removeAttr("disabled");
      }else{
        $(this).hide().attr("disabled", "disabled");
      }
      if( !target.find("option:selected").is(":visible") ){
        target.val( target.find("option:visible").first().val() );
      }
    });
  });
});
