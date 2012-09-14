# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$('#toggle_cover_flow').click ->
		$('.cover_flow').slideToggle("slow")
		this.preventDefault()
		
	$('#voting_button button').live "click", ->
		
		image_id = $('#vote_count').attr('rel')
		$.get('images/'+image_id+'/like', (data) ->
			vote_count = data.like_count
			
			$('#vote_count').text(vote_count)
			$('.flow canvas[rel="'+image_id+'"]').attr('ref', vote_count)
			alert 'Thanks, your vote was recorded'
		)
		
		