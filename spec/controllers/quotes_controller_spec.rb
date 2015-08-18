require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  describe "get #random" do
    before do
      @dreams = create(:category, title: "Dreams")
      @quote = create(:quote, category_id: @dreams.id)
      get :random, category: "Dreams"
    end

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "assigns @quote to the random quote it returns" do
      expect(assigns(:quote)).to eq(@quote)
    end

    it "renders the random quote template" do
      expect(response).to render_template(:random)
    end
  end
end