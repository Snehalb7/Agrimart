# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#farmer_taluka_id').parent().hide()
  talukas = $('#farmer_taluka_id').html()
  $('#farmer_district_id').change ->
    district = $('#farmer_district_id :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(talukas).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#farmer_taluka_id').html(options)
      $('#farmer_taluka_id').parent().show()
    else
      $('#farmer_taluka_id').empty()
      $('#farmer_taluka_id').parent().hide()
