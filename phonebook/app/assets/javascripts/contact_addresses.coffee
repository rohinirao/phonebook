# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#contact_address_label').change ->
    alert("hi");
    val = $(this).val()
    $('#contact_address_label').show()
  return
return
