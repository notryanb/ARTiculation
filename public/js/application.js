$(document).ready(function() {

    $(".login_button").on("click", function(){
        $(".login").show();
    });

     $(".signup").hide();
    $(".signup_button").on("click", function(){
        $(".signup").show();
    });

    $(".hidden_edit_btn").on("click", function(){
      $(this).next(".hidden_edit").show();
    });

    $(".hidden_create_btn").on("click", function(){
      $(this).next(".hidden_create").show();
    });
});