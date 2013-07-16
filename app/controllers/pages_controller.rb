class PagesController < ApplicationController

  def index
    @yoda_img = Dir.entries('app/assets/images/').reject { |img| img =~ /^\./}
    @quotes = Quote.all.sample
  end

end
