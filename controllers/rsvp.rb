class Rsvp < App

  get '/'do
   	rsvp_haml :'rsvp/index'
  end
end
