class Quote < ActiveRecord::Base
  validates :quote_text, presence: true

  belongs_to :author
end
