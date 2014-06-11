module Mailer
  Mail.defaults do
    delivery_method :smtp_connection, { :address              => ENV["MAILER_SERVER"],
                                        :port                 => 587,
                                        :user_name            => ENV["MAILER_USER"],
                                        :password             => ENV["MAILER_PASS"],
                                        :authentication       => :plain,
                                        :enable_starttls_auto => true  }
  end

  def draft_email
    mail = Mail.new do
      from     ENV["MAILER_FROM"]
      cc       ENV["MAILER_CC"]
      to       ENV["MAILER_TO"]
    end
    mail
  end
end
