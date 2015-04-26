# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#trader_taluka_id').parent().hide()
  talukas = $('#trader_taluka_id').html()
  $('#trader_district_id').change ->
    district = $('#trader_district_id :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(talukas).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#trader_taluka_id').html(options)
      $('#trader_taluka_id').parent().show()
    else
      $('#trader_taluka_id').empty()
      $('#trader_taluka_id').parent().hide()
