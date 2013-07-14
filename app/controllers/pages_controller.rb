class PagesController < ApplicationController

  def index
    @quotes = Quote.all.map(&:quote).sample
  end

end
