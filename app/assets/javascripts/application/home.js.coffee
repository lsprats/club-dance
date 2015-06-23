$(document).on 'ready', ->
  $windowHeight = $(window).height()
  $header = $('.l-header')

  $('.full-background').css('height', $windowHeight)

  $(window).on 'scroll', ->
    if ( $(window).scrollTop() >= $windowHeight )
      $header
        .addClass('fixed')
        .next().css('margin-top', 40);

    else
      $header
        .removeClass('fixed')
        .next().css('margin-top', 0);

  swiper = new Swiper('.swiper-container', {
      pagination: '.swiper-pagination',
      paginationClickable: true
  });