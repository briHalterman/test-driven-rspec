require 'rails_helper'

RSpec.describe "Posts API", type: :request do
  describe "GET /posts" do
    it "returns a successful response" do
      get "/posts"
      expect(response).to have_http_status(:ok)
    end
  end
end