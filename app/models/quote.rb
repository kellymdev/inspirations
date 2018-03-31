# frozen_string_literal: true

class Quote < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  validates :quote_text, presence: true
end
