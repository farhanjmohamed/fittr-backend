class OutfitItemsController < ApplicationController
  def index
    outfit_items = Outfit_items.all

    render json: outfit_items.json
  end
end
