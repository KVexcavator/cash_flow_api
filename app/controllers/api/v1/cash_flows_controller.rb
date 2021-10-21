class Api::V1::CashFlowsController < ApplicationController
  def index
    render json: CashFlow.all
  end
end
