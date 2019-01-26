require_relative 'Captcha.rb'
require_relative 'account.rb'
require_relative 'transactions.rb'
require_relative 'accountsWithTransactions.rb'

correct_answer = Captcha.new.getCaptcha
answer = gets

if answer.to_i == correct_answer
  puts "Success"
else
  return
end

puts "For accounts info, press: 1"
puts "For transactions info, press: 2"
puts "For all information, press: 3"

def showWithJson(arr)
  puts JSON.pretty_generate(arr)
end

answer = nil
answer = gets

case answer.to_i
when 1
  puts "Accounts: \n"
showWithJson(AccountClass.new.getInfo)
when 2
  puts "Transactions: \n"
showWithJson(TransactionsClass.new.getInfo)
when 3
  puts "Accounts with transactions: \n"
showWithJson(AccountsWithTransactions.new.getInfo)
else
  return
end
