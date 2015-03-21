$(document).ready(function() {

    $(".login_button").on("click", function(){
        $(".login").show();
    });

     $(".signup").hide();
    $(".signup_button").on("click", function(){
        $(".signup").show();
    });

    $(".hidden_edit_btn").on("click", function(){
      $(".hidden_edit").show();
    });
});