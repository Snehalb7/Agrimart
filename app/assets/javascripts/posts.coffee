# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#post_crop_name_id').parent().hide()
  names = $('#post_crop_name_id').html()
  $('#post_crop_category_id').change ->
    category = $('#post_crop_category_id :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(names).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#post_crop_name_id').html(options)
      $('#post_crop_name_id').parent().show()
    else
      $('#post_crop_name_id').empty()
      $('#post_crop_name_id').parent().hide()
