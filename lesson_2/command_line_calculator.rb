# write a program that asks for 2 numbers
# then asks for a method: add, subtract, multiply or divide
# output the result

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1.to_f / num2.to_f
  # t = num1 / num2
  # rm = num1 % num2
  # puts "#{num2} goes into #{num1} #{t} times with a remainder of #{rm}"
end

loop do
  puts 'Enter a number:'
  @num1 = Kernel.gets().chomp()
  @num1 = @num1.to_i
  if @num1.class != Integer
    puts "Invalid input."
    next
  end
  break
end

loop do
  puts 'Enter another number:'
  @num2 = Kernel.gets().chomp()
  @num2 = @num2.to_i
  if @num2.class != Integer
    puts "Invalid input."
    next
  end
  break
end

loop do
  puts 'Choose an action by typing one of the following: add; subtract; multiply; divide.'
  action = Kernel.gets().chomp()
  case action
  when 'add' then puts add(@num1, @num2)
  when 'subtract' then puts subtract(@num1, @num2)
  when 'multiply' then puts multiply(@num1, @num2)
  when 'divide' then puts divide(@num1, @num2)
  else 
    puts "Please type one of the actions exactly with no spaces on either side."
    next
  end
  break
end
