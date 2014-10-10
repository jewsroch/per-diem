class BudgetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Budgets.all
  end

  def create
    @budget = Budget.new(budget_params)

    if @budget.save
      redirect_to @budget
    else
      render 'new'
    end
  end

  def new
    @budget = budget.new
  end

  def show
    @budget = budget.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def budget_params
      params.require(:budget).permit(:title, :amount, :budget_id)
    end
end