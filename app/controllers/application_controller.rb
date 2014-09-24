class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @transactions = Transaction.all
    @budgets = Budget.all
    @users = User.all
    @accounts = Account.all
  end
end
