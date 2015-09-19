require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  render_views

  let(:category) { create(:category) }

  describe "get #index" do
    before { get :index }

    it "returns http status 200" do
      expect(response.status).to eq(200)
    end

    it "assigns @categories to all the categories" do
      expect(assigns(:categories)).to eq(Category.all)
    end

    it "renders the categories index template" do
      expect(response).to render_template(:index)
    end
  end
end