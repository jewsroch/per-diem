class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Accounts.all
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def new
    @account = account.new
  end

  def show
    @account = account.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def account_params
      params.require(:account).permit(:title, :amount, :account_id)
    end
end