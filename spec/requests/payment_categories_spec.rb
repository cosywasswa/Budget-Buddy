require 'rails_helper'

RSpec.describe "PaymentCategories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/payment_categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/payment_categories/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/payment_categories/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/payment_categories/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/payment_categories/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
