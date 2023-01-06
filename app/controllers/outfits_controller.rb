class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all

    render template: "outfits/index"
  end

  def create
    outfit = Outfit.new(name: params["name"], user_id: current_user.id)

    if outfit.save
      items_in_outfit = JSON.parse(params["outfit"])

      items_in_outfit.each do |i|
        outfit_item = OutfitItem.new(outfit_id: outfit.id, item_id: i["id"])
        outfit_item.save
      end

      render json: outfit.as_json
    else
      render json: { errors: outfit.errors.full_messages }, status: 422
    end

    pp items_in_outfit
  end

  def show
    id = params["id"]
    outfit = Outfit.find(id)

    render json: outfit.as_json
  end

  def update
    id = params["id"]
    outfit = Outfit.find(id)

    outfit.update(
      outfit.name = params["name"] || outfit.name
    )
    outfit.save

    render json: outfit.as_json
  end

  def destroy
    id = params["id"]
    outfit = Outfit.find(id)

    outfit.destroy
    render json: { message: "outfit deleted!" }
  end
end
