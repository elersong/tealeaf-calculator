def say(msg)
  puts " => #{msg}"
end

def prompt(msg)
  say msg
  value = gets.chomp
  return value
end

num1 = (prompt "What's the first number?").to_f

num2 = (prompt "What's the second number?").to_f

action = (prompt "1) add 2) subtract 3) multiply 4) divide").to_i

if action == 1
  say num1 + num2
elsif action == 2
  say num1 - num2
elsif action == 3
  say num1*num2
elsif action == 4
  say num1 / num2
else
  say "Invalid entry"
end
