require "test_helper"
require "api/app/app"

describe App do
  include Rack::Test::Methods

  let(:app) { App }
  let(:user) { spawn_user email: "me@example.com", password: "password" }
  let(:service) { "https://app.example.com" }

end
