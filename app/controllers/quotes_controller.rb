# frozen_string_literal: true

class QuotesController < ApplicationController
  # get '/quotes/random/:category'
  def random
    category = Category.find_by('title = ?', params['category'])
    @quote = category.quotes.order(Arel.sql('random()')).first
    @categories = Category.all
  end
end
