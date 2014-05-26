class Notification
  include Mailer

  attr_accessor :from, :body
    def initialize(args_hash)
      @from = args_hash[:from]
      @body = args_hash[:body]
    end

    def send
      Mailer.deliver(@from, @body)
    end
end
