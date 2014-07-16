"use strict"



$(document).ready ->
  first_match = (string) ->
    return true if null_string(string)
    list = ["valerie", "aldo", "jason", "grace", "mona", "dave", "david"]
    list.indexOf(string.toLowerCase()) > -1
  last_match = (string) ->
    return true if null_string(string)
    list = ["wright", "dizanno", "swanson", "tester", "hennein", "redman"]
    list.indexOf(string.toLowerCase()) > -1

  null_string = (value) ->
    (!value) || (/^\s*$/.test(value)) || (0 == value.length)

  check_name = (first_name, last_name) ->
    if first_match(first_name)
      last_match(last_name)
    else
      false

  show_related_fields = (event, show_el) ->
    show_time = event.target.checked
    first_name = $("#first_name").val()
    last_name = $("#last_name").val()
    guest_exlcuded = check_name(first_name, last_name)
    if show_time && !guest_exlcuded
      $(".party-attendees, .invitee-guests").show()
    else if !show_time
      $(".party-attendees, .invitee-guests").hide()

  $("#event_map").each ->
    map = L.mapbox.map('event_map', 'abrahamoshel.ifo03mlo')
    map.scrollWheelZoom.disable()


  $(".rsvp_form").each ->
    $("#attending").bind "change", (ev) ->
      show_related_fields(ev, $(".party-attendees, .invitee-guests"))

    $(this).validate
      rules:
        first_name:
          required: true
        last_name:
          required: true
        email_address:
          require_from_group: [1, ".contact_info"]
        phone:
          require_from_group: [1, ".contact_info"]
        guests:
          required:'#attending_guest:checked'
        attending:
          require_from_group: [1, ".invitee-attendance"]
        not_attending:
          require_from_group: [1, ".invitee-attendance"]
      messages:
        first_name: "We can't print place card without your name"
        last_name: "We can't print place card without your name"
        email_address: "Please give us a way to contact you"
        phone: "Please give us a way to contact you"
        guests: "Please give the full name of the guests attending"
        attending: "Please let us know if you are attending or not"
        not_attending: "Please let us know if you are attending or not"

