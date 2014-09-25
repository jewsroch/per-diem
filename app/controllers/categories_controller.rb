class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Categories.all
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def new
    @category = category.new
  end

  def show
    @category = category.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def category_params
      params.require(:category).permit(:title, :amount, :budget_id)
    end
end