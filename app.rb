require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]   #creating a new instance variable called @username, that's set to  
    "Hello #{@user_name}!"
  end

#Create a new route for /goodbye/:name that returns "Goodbye, (person's name)"

get "/goodbye/:name" do
  @user_name = params[:name]
  erb :goodbye
end





  # Code your final two routes here:

end
