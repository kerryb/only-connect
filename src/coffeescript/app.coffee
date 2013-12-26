$ ->
  $("#title").show
  $("#title").click ->
    $(this).removeClass "active"
    $("#round-1").addClass "active"
