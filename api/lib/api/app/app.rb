class App < Sinatra::Base
  
  get "/" do
    @users = User.all
    haml :index 
  end

  get "/login" do
    service = Api::Services::Login.new
    service.call
    @service = params[:service]
    @lt = service.ticket.name
    haml :login
  end

  post "/login" do
    status 422 unless all_inputs_present?
  end
 
  get "/users/new" do
    haml :signup
  end

  post "/users" do
    service = Api::Services::Signup.new email: params[:user][:email], password: params[:user][:password]
    service.call

    if service.status == :ok
      redirect "/"
    end
  end

  def all_inputs_present?
  end

end
