require_relative 'account.rb'
require_relative 'transactions.rb'

class AccountsWithTransactions
  def getInfo
accounts = AccountClass.new.getInfo
transactions = TransactionsClass.new.getInfo
showings = []
for i in 0..accounts.length-1
showings.push(
   accounts[0].keys[0] => accounts[i][accounts[0].keys[0]],
   accounts[0].keys[1] => accounts[i][accounts[0].keys[1]],
   accounts[0].keys[2] => accounts[i][accounts[0].keys[2]],
   accounts[0].keys[3] => accounts[i][accounts[0].keys[3]],
   "transactions" => transactions.select{|x| x["account"] == accounts[i]["account"]}
)
end
return showings
end
end
