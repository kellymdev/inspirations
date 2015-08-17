require 'rails_helper'

RSpec.describe Quote, type: :model do
  let!(:quote) { create(:quote) }

  context "validations" do
    it "has quote_text" do
      expect(quote).to validate_presence_of(:quote_text)
    end
  end

  context "relationships" do
    it "belongs to an author" do
      expect(quote).to belong_to(:author)
    end

    it "belongs to a category" do
      expect(quote).to belong_to(:category)
    end
  end

  after do
    Quote.destroy_all
    Author.destroy_all
    Category.destroy_all
  end
end
