# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#employee_joining_date').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true,
    changeYear: true
  $('#employee_birth_date').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true,
    changeYear: true,
    
  $('#employee_state_id').parent().hide()
  states = $('#employee_state_id').html()
  $('#employee_country_id').change ->
    country = $('#employee_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#employee_state_id').html(options)
      $('#employee_state_id').parent().show()
    else
      $('#employee_state_id').empty()
      $('#employee_state_id').parent().hide()