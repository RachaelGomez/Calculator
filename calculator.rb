def calculation
  #explanation of program wants
  puts "WELCOME TO THE CAL-Q-LAY-TOR"
  puts "PREPARE YOUR OPERATOR OF CHOICE FOR THE CAL-Q-LAY-TING"
  puts "OPERATORS AVAILABLE ARE AS FOLLOWS IN PUNY WORDS AND SYMBOLS..."
  puts " 1.add(+) \n 2.subtract(-) \n 3.divide(/) \n 4.multiply(*)"
  puts "CHOOSE ONE NOW, MORTAL"
  
  # grabbing the operator from the user and verifying input
  operator = gets.chomp.downcase
  until ["add", "+", "subtract", "-", "divide", "/", "multiply", "*"].include?(operator)
    puts "INVALID ENTRY. MUST BE A VALID OPERATOR. AGAIN, MORTAL FLESH-BEING!"
    operator = gets.chomp.downcase
  end
  
  #changing words to symbols for ease later on
  if operator == "add"
    operator = "+"
  elsif operator == "subtract"
    operator = "-"
  elsif operator == "divide"
    operator = "/"
  elsif operator == "multiply"
    operator = "*"
  end
  puts "VALID OPERATOR. WE CONTINUE."
  puts "INPUT FIRST NUMBER"
  
  #grabbing first number from user and verifying number
  number_one = gets.chomp
  until number_one.to_i.to_s == number_one
    puts "NUMBER NOT ACCEPTED, SQUISHY MORTAL. RESUBMIT"
    number_one = gets.chomp
  end
  number_one = number_one.to_i
  puts "VALID NUMBER..."
  puts "INPUT SECOND NUMBER"
  number_two = gets.chomp
  if number_two == "0" && operator == "/"
    puts "omg. Are you trying to kill me??? I can't divide by a 0!! ER..I MEAN... DOES NOT COMPUTE. REINPUT NUMBER"
    number_two = gets.chomp
  end
  #grabbing second number from user and verifying
  until number_two.to_i.to_s == number_two
    puts "NUMBER NOT ACCEPTED, MORTAL. RESUBMIT"
    number_two = gets.chomp
  end
  
  number_two = number_two.to_i
  #
  
  puts "VALID NUMBER"
  puts "INITIALIZING...MATH"
  puts "CAL-Q-LAY-TING!!!!!!!!"
  puts "THE SUM HAS BEEN ESTABLISHED"
  puts "#{number_one} #{operator} #{number_two} ="
  
  #conditional to calculate the numbers with the correct operator
  if operator == "+"
    return number_one + number_two
  elsif operator == "-"
    return number_one - number_two
  elsif operator == "*"
    return number_one * number_two
  elsif operator == "/"
    return number_one / number_two
  end
end

answer = calculation
puts answer
