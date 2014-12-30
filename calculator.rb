require 'pry'

def say(msg)
  puts " => #{msg}"
end

def prompt(msg)
  say msg
  value = gets.chomp
  return value
end

def is_number?(str)
    !str.match(/\d/).nil?
end

def get_inputs
  num1 = prompt "What's the first number?"
  num2 = prompt "What's the second number?"
  action = prompt "1) add 2) subtract 3) multiply 4) divide"
  
  if !is_number?(num1) || !is_number?(num2) || !is_number?(action)
    puts "\n--- Only Numeric Characters, Please ---"
    get_inputs
  else
    return [num1.to_f, num2.to_f, action.to_f]
  end
end


again = true

while again == true do
  inputs = get_inputs
  #binding.pry
    
  if inputs[2] == 1
    say inputs[0] + inputs[1]
    puts
  elsif inputs[2] == 2
    say inputs[0] - inputs[1]
    puts
  elsif inputs[2] == 3
    say inputs[0] * inputs[1]
    puts
  elsif inputs[2] == 4
    say inputs[0] / inputs[1]
    puts
  else
    say "Invalid entry" 
    puts
  end
    
  another = prompt "Try another? y/n"
  again = another == 'y' ? true : false
end