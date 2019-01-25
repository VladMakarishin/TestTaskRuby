require_relative 'Captcha.rb'
require 'open-uri'
require 'nokogiri'
require 'json'

correct_answer = Captcha.new.getCaptcha
answer = gets

if answer.to_i == correct_answer

else
  return
end

showings = []
url = 'https://link.alfabank.ru/webclient/pages/static/iFrames/demo/extract.html'
html = open(url)
doc = Nokogiri::HTML(html)
doc.css(".odd").each do |showing|
  puts "name: #{showing.css('.td5').inner_html}"
  puts "account: #{showing.css('.td1').inner_html}"
  puts "currency: #{showing.css('.td2').inner_html}"
  puts "balance: #{showing.css('.td4').inner_html}"
end
