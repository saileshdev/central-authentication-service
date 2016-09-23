module Api::Services
  class Login
    attr_reader :ticket
    
    def call
      @ticket = LoginTicket.new name: "LT-#{Digest::SHA1.hexdigest(placeholder)}"
      @ticket.save
    end
  
  end
end
