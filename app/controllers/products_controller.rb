class ProductsController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products
      @title = @category.name.upcase
    elsif params[:brand]
      @products = Product.where(brand: params[:brand])
      @title = params[:brand].upcase
    else
      @products = Product.all
      @title = "ALL"
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
