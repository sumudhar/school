# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#article_published_on').datepicker
    dateFormat: 'yy-mm-dd'

  $('#article_state_id').parent().hide()
  states = $('#article_state_id').html()
  $('#article_country_id').change ->
    country = $('#article_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#article_state_id').html(options)
      $('#article_state_id').parent().show()
    else
      $('#article_state_id').empty()
      $('#article_state_id').parent().hide()