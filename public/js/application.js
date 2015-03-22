$(document).ready(function() {

    $(".login_button").click(function(){
        $(".login").toggle();
    });

     $(".signup_button").click(function(){
        $(".signup").toggle();
    });

     $("#edit_button").click(function(){
        $("#edit_form").toggle();
    });

    $(".hidden_edit_btn").on("click", function(){
      $(this).next(".hidden_edit").show();
    });

    $(".hidden_create_btn").on("click", function(){
      $(this).next(".hidden_create").show();
    });
});