var AssigneeFilter = {
  runFilter: function(str){
    var target = this.target;
    target.find("option").each(function(){
      if( !$(this).is(":visible") ){
        if( new RegExp(str, "i").test($(this).text()) ){
          $(this).show().removeAttr("disabled");
        }
      }else{
        if( !new RegExp(str, "i").test($(this).text()) ){
          $(this).hide().attr("disabled", "disabled");
        }
      }
      if( !target.find("option:selected").is(":visible") ){
        target.val( target.find("option:visible").first().val() );
      }
    });
  },
  showFilterInput: function(){
    var input = $('<input placeholder="Assignee filter"></input>');
    var timerId = null;
    var $this = this;
    input.insertBefore(this.target);
    input.on("keyup", function(e){
      clearTimeout(timerId);
      timerId = setTimeout(function(){
        $this.runFilter(input.val());
      }, 500);
    });
  }
}
