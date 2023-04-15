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
      @all_products = Product.all
      @title = "ALL"
      @products = @all_products
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.seller = current_user.seller
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :brand, :category_id, :condition_id, :seller_id, :size, :photo)
  end
end
