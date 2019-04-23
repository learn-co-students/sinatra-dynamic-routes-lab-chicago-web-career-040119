require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


#Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.
  get "/reversename/:name" do
    name = params[:name]
    "#{name.reverse}"
  end

#Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number.
  get "/square/:number" do
    number = params[:number]
    (number.to_i**2).to_s
  end


  #Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.
  get "/say/:number/:phrase" do
    string = ""
    number = params[:number]
    phrase = params[:phrase]

    number.to_i.times  do
      string += "#{phrase}\n"
    end
    string
  end


  #Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts six words and returns a string with the formatted as a sentence.
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
  # get "/operation/:number1/:number2" do
  #   operation = params[:operation]
  #   @num1 = params[:number1].to_i
  #   @num2 = params[:number2].to_i
  #
  #  if operation == "add"
  #    add = (@num1 + @num2).to_s
  #    "#{add}"
  #  elsif operation == "substract"
  #    substract = (@num1 - @num2).to_s
  #    "#{substract}"
  #  elsif operation == "multiply"
  #    multiply = (@num1 * @num2).to_s
  #    "#{multiply}"
  #  elsif operation == "divide"
  #    divide = (@num1 / @num2).to_s
  #  # else
  #  #   answer = "Unable to perform this operation"
  #  #   "#{answer}"
  #  end
  # end
  get '/:operation/:number1/:number2' do
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  response = params[:operation]
  if response == 'add'
      add = (@number1 + @number2).to_s
      "#{add}"
  elsif response == 'subtract'
      subtract = (@number1 - @number2).to_s
      "#{subtract}"
  elsif response == 'multiply'
      multiply = (@number1 * @number2).to_s
      "#{multiply}"
  elsif response == 'divide'
      divide = (@number1 / @number2).to_s
      "#{divide}"
 end
end


end
