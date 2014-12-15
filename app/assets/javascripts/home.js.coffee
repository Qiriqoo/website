$ ->
	$("body").scrollspy {target: "#nav-to-toggle"}

	$(document).on "click", ".nav-button", (e)->
		e.preventDefault()
		target = $(this).attr('data-link')
		targetBlockTop = $(document).find("#" + target)
		$("body, html").animate
			scrollTop: targetBlockTop.position().top
		, 600, 'linear'

  $('#travail').hover ->
    $('#travail-description').animate
      top: "-20px",
       '1000'