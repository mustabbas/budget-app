class TransactionController < ApplicationController
  before_action :authenticate_user!
  def index
    @transaction = Transac.find(params[:id])
  end

  def show
    @transaction = Transac.where(user: current_user)
  end

  def new
    @transaction = Transac.new
    @categories = Category.where(user: current_user)
  end

  def create
    transaction = Transac.new(params.require(:transac).permit(:name, :amount, :user_id))
    params[:categories].each do |key, _value|
      CategoryTransac.create(category: Category.find(key), transac: transaction)
    end
    respond_to do |format|
      if transaction.save
        format.html do
          flash[:success] = 'transaction saved successfully'
          redirect_to transaction_show_path(1)
        end
      else
        flash.now[:error] = 'Error: transaction could not be saved'
        render :new, locals: { transaction: transaction }
      end
    end
  end
end
