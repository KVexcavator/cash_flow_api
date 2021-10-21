require 'rails_helper'

RSpec.describe "Api::V1::CashFlows", type: :request do
  describe "GET /index" do
    it "should show cash_flows" do
      ivan = User.create(nikname: 'Ivan')
      CashFlow.create(title: 'alms', is_income: true, price: 1.20, user: ivan)
      get "/api/v1/cash_flows"
      expect(response).to be_successful
    end
  end
end
