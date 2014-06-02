module Mailer
  Mail.defaults do
    delivery_method :smtp, { :address              => ENV["MAILER_SERVER"],
                             :port                 => 587,
                             :user_name            => ENV["MAILER_USER"],
                             :password             => ENV["MAILER_PASS"],
                             :authentication       => ENV["MAILER_AUTH"],
                             :enable_starttls_auto => true  }
  end

  def self.deliver(from=nil, body=nil)
    Mail.new do
      from     ENV["MAILER_FROM"]
      cc       ENV["MAILER_CC"]
      to       ENV["MAILER_TO"]
      subject  "New RSVP From #{from}"
      body     body
    end.deliver
  end
end
