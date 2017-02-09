class ListingsController < ApplicationController
  before_action :authenticate_user!

  def new
    # 現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

end
