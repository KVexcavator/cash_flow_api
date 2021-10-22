class Api::V1::CashFlowsController < ApplicationController
  # GET /api/v1/cash_flows
  def index
    @cash_flows = CashFlow.all
    render json: CashFlowSerializer.new(@cash_flows).serializable_hash
  end
  # GET /api/v1/account_state/:user_id
  def account_state
    user = User.find(params[:user_id])
    @cash_flow = CashFlow.where( user: user).last_week
    render json: CashFlowSerializer.new(@cash_flow).serializable_hash
  end
  # GET /api/v1/total/:user_id
  def total
    user = User.find(params[:user_id])
    @total = 0
    cash_flow = CashFlow.where( user: user).last_week
    cash_flow.each do |c|
      if c.is_income
        @total = @total + c.price
      else
        @total = @total - c.price
      end
    end
    render json: @total
  end
  
end
