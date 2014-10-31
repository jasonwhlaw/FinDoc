# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require underscore
#= require gmaps/google


@convert = (doctor) ->

  marker =
    lat: doctor.lat
    lng: doctor.lng
    infowindow: doctor.last_name

  googleMap [marker]

@googleMap = (content) ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"

  , ->
    markers = handler.addMarkers(content)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$ ->
  doctor = document.querySelector('#doctor')

  $.ajax
    url: '/doctors/' + doctor.dataset.id + '.json'
  .done (doctor_json) ->
    convert doctor_json