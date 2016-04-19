# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
				 
   		 $(document).on "page:change", ->
   		     $('#disability_hear').click -> 
   		         $('#disability_hear1').fadeToggle()
   		         $('#details').show()


   		 $(document).on "page:change", ->
   		     $('#disability_vision').click ->
   		         $('#disability_vision1').fadeToggle()
   		         $('#details').show()


   		 $(document).on "page:change", ->
   		     $('#disability_move').click ->
   		         $('#disability_move1').fadeToggle()
   		         $('#details').show()


   		 $(document).on "page:change", ->
   		     $('#disability_brain').click ->
   		         $('#disability_brain1').fadeToggle()
   		         $('#details').show()
				 
				 

