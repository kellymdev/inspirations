class QuotesController < ApplicationController

  #get '/quotes/random/:category'
  def random
    puts params[:category]
    category = Category.find_by_title(params["category"])
    @quote = category.quotes.sample
  end

end