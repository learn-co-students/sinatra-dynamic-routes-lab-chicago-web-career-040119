require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number**2
    "#{@square}".to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]

    response = ''
    @number.to_i.times do
      response += @phrase
    end
    response
  end

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

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @word1 = params[:word1]
     @word2 = params[:word2]
     @word3 = params[:word3]
     @word4 = params[:word4]
     @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   end

end
