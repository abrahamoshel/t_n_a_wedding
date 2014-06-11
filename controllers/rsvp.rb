class Rsvp < App

  get '/'do
   	rsvp_haml :'rsvp/index'
  end
  post '/' do
    message = Notification.new(params).message
    mailer = Mandrill::API.new
    mailer.messages.send(message) if params
    redirect to("/info")
  end
  get '/info' do
    rsvp_haml :'rsvp/info'
  end
end
