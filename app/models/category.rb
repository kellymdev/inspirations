class Category < ActiveRecord::Base
  has_many :quotes

  validates :title, presence: true
end
