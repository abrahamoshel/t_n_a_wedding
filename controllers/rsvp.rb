class Rsvp < App

  get '/'do
   	rsvp_haml :'rsvp/index'
  end
  post '/' do
    Notification.new(params).email.deliver if params
    redirect to("/info")
  end
  get '/info' do
    rsvp_haml :'rsvp/info'
  end
end
