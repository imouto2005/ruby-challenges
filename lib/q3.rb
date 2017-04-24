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
$current_balance = 4000
p $current_balance

def are_you_done
  p 'Are you done?'
  response = gets.chomp
  if response == 'yes'
    p 'Thank you!'
  else
    prompt
  end
end

def check_balance
  p "Your current balance is #{$current_balance}"
  are_you_done
end

def deposit
  p 'How much would you like to deposit?'
  amt = gets.chomp.to_i
  $current_balance += amt
  check_balance
end

def withdraw
  p 'How much would you like to withdraw?'
  amt = gets.chomp.to_i
  $current_balance -= amt
  check_balance
end

def prompt
  p 'What would you like to do? (deposit, withdraw, check_balance)'
  choice = gets.chomp

  case choice
  when 'deposit'
    deposit
  when 'withdraw'
    withdraw
  when 'check_balance'
    check_balance
  else
    p 'Sorry please follow instructions and enter properly'
  end
end

prompt
