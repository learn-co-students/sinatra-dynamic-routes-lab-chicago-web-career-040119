require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @new_body = []
    @number.times do
      @new_body << @phrase
    end

    @new_body
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case params[:operation]
    when "add"
      @solution = @num_1 + @num_2
    when "subtract"
      @solution = @num_1 - @num_2
    when "multiply"
      @solution = @num_1 * @num_2
    when "divide"
      @solution = @num_1 / @num_2
    end

    "#{@solution}"
  end

end
