desc "Import quotes from using Mechanize"
# scraped from http://www.yodaquotes.net/

task :import_quotes => :environment do |variable|

  10.times do |num|
    agent = Mechanize.new
    agent.get("http://www.yodaquotes.net/page/#{num}/")
    agent.page.search(".title").each do |quote|
      Quote.create!(:quote => quote.text.strip)
    end
  end

end
