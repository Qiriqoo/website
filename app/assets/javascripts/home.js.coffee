$ ->
  $('.slick-block').slick
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000

  $("body").scrollspy {target: "#nav-to-toggle"}

  $(document).on "click", ".nav-button", (e)->
    e.preventDefault()
    target = $(this).attr('data-link')
    targetBlockTop = $(document).find("#" + target)
    $("body, html").animate
      scrollTop: targetBlockTop.position().top
    , 600, 'linear'
