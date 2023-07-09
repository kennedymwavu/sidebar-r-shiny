$(document).ready(function() {
  $(".btn-toggle-nav").on("click", "a", function() {
    // remove "active" class from all elements:
    $(".btn-toggle-nav a").removeClass("active");

    // add "active" class to the clicked element:
    $(this).addClass("active");
  })
});
