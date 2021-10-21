require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      User.create!(nikname: 'Ivan')
      get "/api/v1/users"
      expect(response).to be_successful
    end
  end
end
