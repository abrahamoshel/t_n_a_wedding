"use strict"

$(document).ready ->
  $("#event_map").each ->
    L.mapbox.map('event_map', 'abrahamoshel.ifo03mlo')

  $(".rsvp_form").each ->
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

