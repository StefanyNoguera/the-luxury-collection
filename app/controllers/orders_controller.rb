class OrdersController < ApplicationController
  before_action :set_product

  def new
    @order = Order.new
    @order.product = @product
    @order.user = current_user
  end

  def create
    @order = Order.new(order_params)
    @order.product = @product
    @order.user = current_user
    redirect_to user_path(current_user) if @order.save
  end

  private

  def order_params
    params.require(:order).permit(:product_id, :user_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
