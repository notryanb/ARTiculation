$(document).ready(function() {

    $(".login_button").click(function(){
        $(".login").toggle();
    });

     $(".signup_button").click(function(){
        $(".signup").toggle();
    });

    $(".hidden_edit_btn").on("click", function(){
      $(this).next(".hidden_edit").show();
    });

    $(".hidden_create_btn").on("click", function(){
      $(this).next(".hidden_create").show();
    });
});