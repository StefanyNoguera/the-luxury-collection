class WishlistsController < ApplicationController
  before_action :set_product, only: [:new, :create]
  before_action :authenticate_user!

  def index
    @wishlists = current_user.wishlists
  end

  def new
    @wishlist = Wishlist.new
    @wishlist.product = @product
    @wishlist.user = current_user
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.product = @product
    @wishlist.user = current_user
    if current_user.wishlists.where(product: @product).exists?
      redirect_to product_wishlists_path(current_user), alert: "Product was already added to your wishlist."
    elsif @wishlist.save
      redirect_to product_wishlists_path(current_user), notice: "Product was successfully added to your wishlist."
    else
      render :new
    end
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:product_id, :user_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
