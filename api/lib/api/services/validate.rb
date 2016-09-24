module Api::Services
  class Validate
  attr_reader :status, :user 
    def initialize service, service_ticket_name
      @service = service
      @service_ticket_name = service_ticket_name
    end

    def call
    end

  end
end
