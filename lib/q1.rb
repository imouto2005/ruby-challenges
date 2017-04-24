# Challenge 1 - Calculator

# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division)
# and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

p 'What calculation would you like to do? (add, sub, mult, div)'
choice = gets.chomp

p 'Give a number: '
num1 = gets.chomp.to_i

p 'Give another number: '
num2 = gets.chomp.to_i

case choice
when 'add'
  answer = num1 + num2
  p "Your result is #{answer}"
when 'sub'
  answer = num1 - num2
  p "Your result is #{answer}"
when 'mult'
  answer = num1 * num2
  p "Your result is #{answer}"
when 'div'
  answer = num1 / num2
  p "Your result is #{answer}"
else
  p 'Sorry please follow instructions and enter properly'
end
