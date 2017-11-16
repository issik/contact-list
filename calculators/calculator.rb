require "pry"

@past_number = ""

while true

def calculator
  if @past_number === ""
    puts "what is the first number?"
    first_number = gets.strip.to_i
    puts "what is the operator"
    op = gets.strip
      if (op == "*" || op == "+" || op == "-" || op == "/")
        symbol = op.to_sym
        puts "what's the second number"
        second_number = gets.strip.to_f
        @past_number = first_number.send(symbol, second_number)
        puts @past_number
      else
        puts "invalid input"
        calculator
      end
  else
    puts "Your first number is #{@past_number}"
    first_number = @past_number
    puts "what is the operator"
    op = gets.strip
      if (op == "*" || op == "+" || op == "-" || op == "/")
        symbol = op.to_sym
        puts "what's the second number"
        second_number = gets.strip.to_f
        @past_number = first_number.send(symbol, second_number)
        puts @past_number
        puts "invalid input"
        calculator
      end
  end
end
calculator
end
calculator
