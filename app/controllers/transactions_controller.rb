class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = Transaction.all
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def new
    @transaction = Transaction.new
    @users = User.all
    @categories = Category.all
    @accounts = Account.all
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def transaction_params
      params.require(:transaction).permit(:amount, :user_id, :transaction_date, :category_id, :account_id)
    end
end