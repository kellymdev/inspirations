require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:category) { create(:category) }

  context "validations" do
    it "has a title" do
      expect(category).to validate_presence_of(:title)
    end
  end

  context "relationships" do
    it "has many quotes" do
      expect(category).to have_many(:quotes)
    end
  end
end
