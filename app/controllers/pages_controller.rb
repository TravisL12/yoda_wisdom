class PagesController < ApplicationController

  def index
    @yoda_img = Dir.entries('app/assets/images')[4..-1].sample
    @quotes = Quote.all.sample
  end

end
