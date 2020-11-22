$(function(){
  $('.author-quotation').hide();

  $('.author-moto').click(function(){
    $(this).next().slideToggle({duration: 300});
  });
});
