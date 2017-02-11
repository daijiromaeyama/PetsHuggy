class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:basics, :description]

  def new
    # 現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
    end
  end

  def show
  end

  def basics
  end

  def description
  end

  private

  def listing_params
    params.require(:listing).permit(:home_type, :pet_type, :breeding_years, :pet_size)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
