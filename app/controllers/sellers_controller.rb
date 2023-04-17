class SellersController < ApplicationController
  def show
    @seller = Seller.find(params[:user_id])
  end

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

  def destroy
    @seller = Seller.find(params[:id])
    @seller.destroy
    redirect_to user_path(current_user), notice: "Seller account deleted."
  end

  private

  def seller_params
    params.require(:seller).permit(:description)
  end
end
