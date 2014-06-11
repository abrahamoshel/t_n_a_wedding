module Mailer
  def compose_message(params, body)
    email = {
      subject: "New RSVP From #{params[:first_name]} #{params[:last_name]}",
      from_name:  "#{params[:first_name]} #{params[:last_name]}",
      text:  body,
      to: [
       {
         email:  ENV["MAILER_TO"],
         name:  ENV["MAILER_TO_NAME"]
       }
      ]
    }
    email
  end
end
