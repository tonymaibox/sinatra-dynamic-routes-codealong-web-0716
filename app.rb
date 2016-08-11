require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get "/multiply/:num1/:num2" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    @total = @num1.to_i * @num2.to_i
    "#{@total}"

  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end


end