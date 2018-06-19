def greeting

  puts "Hello!  Please type your name: "
  name = gets
  puts "\n" + "It is nice to meet you #{name}"  
  puts "\n" + "I am a simple calculator application.  I can add, subtract, multiply, and divide."

  return name

end

puts "\n" + "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers: "
  operation_selection = gets.to_i

  if operation_selection == 1
    return "add"
  elsif operation_selection == 2
    return "subtract"
  elsif operation_selection == 3
    return "multiply"
  elsif operation_selection == 4
    return "divide"
  else
    return "error"

  end

end

def calculate_answer(operator, a, b)

  if operator == "add"
    return  a + b
  elsif operator == "subtract"
    return  a - b
  elsif operator == "multiply"
    return a * b
  elsif operator == "divide"
    return a / b
  end

end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "\n" + "Can we try again?"

  else
    puts "\n" + "first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "\n" + "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "\n" + "The answer is #{answer}"
    puts "\n" + "Type 1 to run another calculation or anything else to end: "
    run_calculator = gets.to_i

    if run_calculator != 1

      puts "\n" + "Thanks ;-)"

    end
  end
end
