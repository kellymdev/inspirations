class Quote < ActiveRecord::Base
  validates :quote_text, presence: true

  belongs_to :author
  belongs_to :category
end
