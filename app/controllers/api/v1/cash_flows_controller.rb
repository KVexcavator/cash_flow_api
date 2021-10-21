class Api::V1::CashFlowsController < ApplicationController
  def index
    render json: CashFlow.all
  end
  def account_state
    render json: { str: "Helo"}
  end
  def total
    render json: { str: "Helo"}
  end
end
