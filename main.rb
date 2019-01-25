require_relative 'Captcha.rb'
require_relative 'account.rb'

correct_answer = Captcha.new.getCaptcha
answer = gets

if answer.to_i == correct_answer
puts "Success"
else
  return
end
AccountClass.new.getAccountInfo
