$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require "bundler"
Bundler.require
require 'api'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/test.sqlite3"
)

DatabaseCleaner.strategy = :truncation

class MiniTest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end

  def spawn_user email: "me@example.com", password: "password"
    service = Api::Services::Signup.new email: email, password: password
    service.call
    service.user
  end

end
