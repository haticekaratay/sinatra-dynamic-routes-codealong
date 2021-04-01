require_relative 'config/environment'

class App < Sinatra::Base

  # This is a static route.
  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user = params[:name]
    "Goodbye, #{@user}."
  end
  get "/multiply/:num1/:num2" do
    @multiply = params[:num1].to_i * params[:num2].to_i
    "#{@multiply}"
  end
end
