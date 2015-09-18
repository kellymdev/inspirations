require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  let!(:dreams) { create(:category, title: "Dreams") }
  let!(:quote) { create(:quote, category: dreams) }

  describe "get #random" do
    before { get :random, category: "Dreams" }

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "assigns @quote to the random quote it returns" do
      expect(assigns(:quote)).to eq(quote)
    end

    it "renders the random quote template" do
      expect(response).to render_template(:random)
    end
  end
end