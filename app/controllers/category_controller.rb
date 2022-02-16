class CategoryController < ApplicationController
  before_action :authenticate_user!
  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(params.require(:category).permit(:name, :icon, :user_id, :categories))
    respond_to do |format|
      if category.save
        format.html do
          flash[:success] = 'category saved successfully'
          redirect_to all_category_path
        end
      else
        flash.now[:error] = 'Error: category could not be saved'
        render :new, locals: { category: category }
      end
    end
  end
end
