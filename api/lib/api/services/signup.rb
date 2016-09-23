module Api::Services
  class Signup
    attr_reader :email, :user, :status
    def initialize email: "me@example.com", password: "blank_password"
      @email = email
      @password = password
    end 
  
    def call
    end

  end
end
