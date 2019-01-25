require_relative 'Captcha.rb'

def fun_captcha
a = Captcha.new.getCaptcha
puts a[1]
return a[0]
end

correct_answer = fun_captcha()
answer = gets

if answer.to_i == correct_answer
puts "Success"
else
  return
end
