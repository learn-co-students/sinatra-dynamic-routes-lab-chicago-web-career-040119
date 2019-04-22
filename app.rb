require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse

  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @return = ""
    params[:number].to_i.times do
      @return += params[:phrase]
    end
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator_hash = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = operator_hash[params[:operation]]
    "#{@num1.public_send(@operation, @num2)}"
  end

end
