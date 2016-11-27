$(document).ready(function() {

  $("#clickme").on("click", function() {
    $('.show').show();
  })

  $("#hide").on("click", function() {
    $('.show').hide();
  })

  $("#clickmetoo").on("click", function() {
    $('.showanswer').show();
  })

  $("#hideme").on("click", function() {
    $('.showanswer').hide();
  })
});
