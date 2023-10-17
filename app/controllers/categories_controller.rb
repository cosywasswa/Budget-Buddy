class CategoriesController < ApplicationController
  def index
    @author = current_user
    @categories = Category.all
    @category_sums = {}
    @categories.each do |category|
      @category_sums[category.id] = category.payments.sum(:amount)
    end
  end

  def show; end

  def new
    @category = Category.new
  end

  def create
    @author = current_user
    @category = @author.categories.build(author_id: current_user.id, **category_params)
    if @category.save
      flash[:success] = 'Category successfully added.'
      redirect_to user_categories_path(@author)
    else
      flash[:error] = 'error while adding Category.'
      render :new
    end
  end

  def destroy; end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
