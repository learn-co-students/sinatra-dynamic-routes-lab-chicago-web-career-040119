require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    squared.to_s
  end

  get '/say/:number/:phrase' do
    output = ""
    params[:number].to_i.times do
      output += params[:phrase]
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    output = ""

    params.each do |k,v|
      output += "#{v} "
    end

    output.chop + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      output = num1 + num2
    when "subtract"
      output = num1 - num2
    when "multiply"
      output = num1 * num2
    when "divide"
      output = num1 / num2
    end

    output.to_s
  end
end
