$(function(){
  $('.button').click(function(){
    var id = $(this).attr('href');

    $('html, body').animate({
      scrollTop: ($(id).offset().top)
    }, 500);
    return false;
  });
});