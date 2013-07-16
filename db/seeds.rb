10.times do |num|
  agent = Mechanize.new
  agent.get("http://www.yodaquotes.net/page/#{num}/")
  agent.page.search(".title").each do |quote|
    Quote.create!(:quote => quote.text.strip)
  end
end
