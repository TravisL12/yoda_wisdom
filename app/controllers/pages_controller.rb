class PagesController < ApplicationController

  def index
    @yoda_img = Dir.entries('app/assets/images/').reject { |fil| fil =~ /(^\.|.ico$)/}.sample
    @quotes = Quote.all.sample
  end

end
