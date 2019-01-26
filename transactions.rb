require 'open-uri'
require 'nokogiri'
require 'json'

class TransactionsClass

  def TransactionsInfo(tag, array)
  url = 'https://link.alfabank.ru/webclient/pages/static/iFrames/demo/rub.html'
  html = open(url)
  doc = Nokogiri::HTML(html)
  doc.css(".#{tag}").each do |showing|
    date = showing.css(".td2").inner_html
    account= showing.css('.td5').inner_html
    description= showing.css('.td1').inner_html
    amount = showing.css('.td7').inner_html
    array.push(
      "date" => date,
      "account" => account,
      "description" => description,
      "amount" => amount
    )
    end
  end

  def getInfo
  showings = []
  TransactionsInfo('odd',showings)
  TransactionsInfo('even',showings)
  return showings
  end

private:TransactionsInfo
end
