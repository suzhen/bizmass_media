# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


@play_video=(video)->
  $('#materialVideo source').attr('src',video)
  $('#materialVideo')[0].load()
  $('#materialVideo')[0].play()
  true