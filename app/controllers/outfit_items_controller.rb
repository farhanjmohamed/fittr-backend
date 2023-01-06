class OutfitItemsController < ApplicationController
  def index
    outfit_items = OutfitItem.all

    render json: outfit_items.json
  end

  def create
    outfit_items = OutfitItem.new(outfit_id: params["outfit_id"], item_id: params["item_id"])

    if outfit_items.save
      render json: outfit_items.as_json
    else
      render json: { errors: outfit_items.errors.full_messages }, status: :bad_request
    end
  end
end
