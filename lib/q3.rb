# Challenge 3 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

p 'Your current balance is'
current_balance = 4000
p current_balance

p 'What would you like to do? (deposit, withdraw, check_balance)'
choice = gets.chomp

case choice
when 'deposit'
  p 'How much would you like to deposit?'
  amt = gets.chomp.to_i
  result = current_balance + amt
  p "Your current balance is #{result}"
when 'withdraw'
  p 'How much would you like to withdraw?'
  amt = gets.chomp.to_i
  result = current_balance - amt
  p "Your current balance is #{result}"
when 'check_balance'
  p "Your current balance is #{current_balance}"
else
  p 'Sorry please follow instructions and enter properly'
end
