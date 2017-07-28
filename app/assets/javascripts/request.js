
$(document).ready(function(){

  $("#local").click(function(){
    var valueSelected = $("#game").data("local");
      $("#team_s").text(valueSelected);
    var valueNotSelected = $("#game").data("visit");
      $("#team_n_s").text(valueNotSelected);
      });

  $("#visit").click(function(){
    var valueSelected = $("#game").data("visit");
      $("#team_s").data(valueSelected);
    var valueNotSelected = $("#game").data("local");
      $("#team_n_s").data(valueNotSelected);
 });

});
