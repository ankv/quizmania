# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

enable_submit_button = ->
  $("#submit_button").prop("disabled", false)

disable_submit_button = ->
  $("#submit_button").prop("disabled", true)

onready = ->
  disable_submit_button()
  $(".choices").click(enable_submit_button)

$(document).on "page:change", ->
  console.log('inside page change')
  onready()

