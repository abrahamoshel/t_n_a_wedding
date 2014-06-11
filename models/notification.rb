require_relative './mailer.rb'

class Notification
  include Mailer

  attr_accessor :params, :email, :first_name, :last_name, :email_address,
                :attending, :attending_guest, :guests,
                :attendance, :allergies, :note, :message

  def initialize(args)
    @params = args
    @message = compose_message(@params, compose_body)
  end

  def compose_body
    body = ""
    @params.each do |k, v|
      body += "#{k}: #{v} \n"
    end
    body
  end
end
