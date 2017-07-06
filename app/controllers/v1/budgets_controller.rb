class V1::BudgetsController < ApplicationController
  before_action :set_action, only: [:show]

  def index
    @budgets = Budget.all
    render json: @budgets, status: :ok
  end


  def show
    render json: @budget, include: 'detail_budgets', status: :ok
  end

  def create
    @budget = Budget.new(require_params)
    if @budget.save
      render :show
    end
  end

  private
  def require_params
    params.require(:budget).permit(:id, :total_amount, detail_budgets_attributes:[:id, :specific_amount])
  end

  def set_action
    @budget = Budget.find(params[:id])
  end
end
