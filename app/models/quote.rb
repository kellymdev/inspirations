class Quote < ActiveRecord::Base
  validates :quote_text, presence: true
end
