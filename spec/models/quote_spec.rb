require 'rails_helper'

RSpec.describe Quote, type: :model do
  let!(:quote) { create(:quote) }

  context "validations" do
    it "has quote_text" do
      expect(quote).to validate_presence_of(:quote_text)
    end
  end

  after do
    Quote.destroy_all
  end
end
