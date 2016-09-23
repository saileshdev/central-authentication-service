module Api::Services
  class Login
    attr_reader :ticket
    
    def initialize username: nil, password: nil, login_ticket_name: nil, service: nil, ticket_granting_ticket_name: nil
      @username = username
      @password = password
      @login_ticket_name = login_ticket_name
      @service = service
      @ticket_granting_ticket_name = ticket_granting_ticket_name
    end
    
    def call
      if @username.nil?
         generate_login_ticket
      else
         login
      end
    end
    
    private

    def generate_login_ticket
      @ticket = LoginTicket.new name: "LT-#{Digest::SHA1.hexdigest(Time.new.to_s)}"
      @ticket.save
    end
    
    def login
    end
 
  end
end
