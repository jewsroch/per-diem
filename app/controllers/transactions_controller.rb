class TransactionsController < ApplicationController
  before_action :authenticate_user!

  before_action :setup_transaction, only: [:create, :new, :update]

  def index
    @transactions = Transaction.all
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.confirm if @transaction.transaction_date < Time.now

    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def new
    @transaction = Transaction.new
    @transaction.transaction_date = Time.now
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def update
  end

  def destroy
    @transaction.cancel
  end

  private
    def transaction_params
      params.require(:transaction).permit(:amount, :user_id, :transaction_date, :category_id, :account_id)
    end

    def setup_transaction
      @users = User.all
      @categories = Category.all
      @accounts = Account.all
    end

end