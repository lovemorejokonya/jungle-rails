class Admin::CategoriesController < ApplicationController
  # to request authentication first before user can access this resource
  # before_filter :authorize

  http_basic_authenticate_with name: "jungle", password: "book"

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(product_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  # def destroy
  #   @category = Category.find params[:id]
  #   @category.destroy
  #   redirect_to [:admin, :categories], notice: 'Category deleted!'
  # end

  private

  def product_params
    params.require(:category).permit(
      :name
    )
  end

end
