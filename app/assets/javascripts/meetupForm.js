$(document).on('DOMContentLoaded', function() {
  $('#js-platforms').on("change", function(){
    $.ajax({
      url: "/games",
      type: "GET",
      dataType: "script",
      data: { "platform_id": this.value }
    })
  });
});
