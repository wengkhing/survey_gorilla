$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  //create three initial fields
  var question = 2;

  //add a new node
  $(document).on('click', '.add_answer', function(e){
    var q_id = $(this).data('id');
    $node = "<div><div class='input-group col-md-8'><input type='text' class='form-control' placeholder='Answer'><span class='input-group-btn'><button class='remove_answer btn btn-default' type='button'><span class='glyphicon glyphicon-remove'></span></button></span></div></div>";
    $("#answers_wrapper"+String(q_id)).append($node);
  });

  $('form').on('click', '.remove_answer', function(){
    $(this).parent().parent().remove();
  });

  $('#add_question').on('click', function(){
    $node = "<div class='single_question'><div class='input-group'><input type='text' class='form-control' name='question"+String(question)+"' placeholder='Question "+String(question)+"'><span class='input-group-btn'><button class='add_answer btn btn-default' type='button' data-id='"+String(question)+"'><span class='glyphicon glyphicon-plus'></span></button></div><div id='answers_wrapper"+String(question)+"'><div><div class='input-group col-md-8'><input type='text' class='form-control' name='q1_a1' placeholder='Answer'><span class='input-group-btn'><button class='remove_answer btn btn-default' type='button'><span class='glyphicon glyphicon-remove'></span></button></span></div></div></div></div>";
    $("#questions_wrapper").append($node);
    question += 1;
  });
});
