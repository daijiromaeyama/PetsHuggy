class ListingsController < ApplicationController
  before_action :authenticate_user!

  def new
    # 現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      redirect_to edit_listing_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path(@listing), notice: "リスティングを作成・保存出来ませんでした"
    end
  end

  def edit
  end

  private

  def listing_params
    params.require(:listing).permit(:home_type, :pet_type, :breeding_years, :pet_size)
  end

end
