require 'open-uri'
require 'nokogiri'
require 'json'

class AccountClass

  def AccountInfo(tag, array)
url = 'https://link.alfabank.ru/webclient/pages/static/iFrames/demo/extract.html'
html = open(url)
doc = Nokogiri::HTML(html)
doc.css(".#{tag}").each do |showing|
  name = showing.css(".td5").inner_html
  account= showing.css('.td1').inner_html
  currency = showing.css('.td2').inner_html
  balance= showing.css('.td4').inner_html
array.push(
    name: name,
    account: account,
    currency: currency,
    balance: balance
  )
    end
  end
  def getAccountInfo
showings = []
AccountInfo('odd',showings)
AccountInfo('even',showings)
puts JSON.pretty_generate(showings)
  end
private:AccountInfo
end
