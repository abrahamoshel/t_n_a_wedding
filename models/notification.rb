class Notification
  include Mailer

  attr_accessor :params, :email, :first_name, :last_name, :email_address,
                :attending, :attending_guest, :guests,
                :attendance, :allergies, :note

  def initialize(args)
    @params = args
    email = compose_email
    email
  end

  def compose_email
    @email = draft_email
    @email.subject = "New RSVP From #{@params[:first_name]} #{@params[:last_name]}"
    @email.body = compose_body
    @email
  end
  def compose_body
    body = ""
    @params.each do |k, v|
      body += "#{k}: #{v} \n"
    end
    body
  end
end
