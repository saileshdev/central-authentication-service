module Api::Services
  class Signup
    
    def initialize email: "me@example.com", password: "blank_password"
      @email = email
      @password = password
    end 
  
    def call
    end

  end
end
