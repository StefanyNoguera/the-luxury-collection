class SellersController < ApplicationController
  def new
    @seller = Seller.new
  end

  def create
    if current_user.seller.present?
      redirect_to user_path(current_user), alert: "You already have a seller account."
    else
      @seller = Seller.new(seller_params)
      @seller.user = current_user
      if @seller.save
        redirect_to user_path(current_user), notice: "Seller account created."
      else
        render :new
      end
    end
  end

  private

  def seller_params
    params.require(:seller).permit(:description)
  end
end
