require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name].reverse
  end

  get '/square/:number' do
		@number = params[:number].to_i
		"#{@number * @number}".to_s
	end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @pharse = params[:phrase]
    say = @number.times do
      say += @phrase
    end
    say



end
