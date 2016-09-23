class App < Sinatra::Base
  
  get "/" do
    "Hello World!"
  end
 
  get "/users/new" do
    haml :signup
  end

end
