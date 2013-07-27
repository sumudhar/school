# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#student_birth_date').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true,
    changeYear: true,
    yearRange: '1980:2030'
  $('#student_admission_date').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true,
    changeYear: true,
    yearRange: '1980:2030'
    
  $('#student_section').parent().hide()
  sections = $('#student_section').html()
  $('#student_course_id').change ->
    course = $('#student_course_id :selected').text()
    escaped_course = course.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(sections).filter("optgroup[label='#{escaped_course}']").html()
    if options
      $('#student_section').html(options)
      $('#student_section').parent().show()
    else
      $('#student_section').empty()
      $('#student_section').parent().hide()