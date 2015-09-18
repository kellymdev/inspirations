require 'rails_helper'

RSpec.describe Author, type: :model do
  let!(:author) { create(:author) }

  context "validations" do
    it "has a name" do
      expect(author).to validate_presence_of(:name)
    end
  end

  context "relationships" do
    it "has many quotes" do
      expect(author).to have_many(:quotes)
    end
  end
end
