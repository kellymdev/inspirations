class QuotesController < ApplicationController
  #get '/quotes/random/:category'
  def random
    category = Category.find_by("title = ?", params["category"])
    @quote = category.quotes.sample
    @categories = Category.all
  end
end