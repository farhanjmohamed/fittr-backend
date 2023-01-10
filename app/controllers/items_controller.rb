class ItemsController < ApplicationController
  def index
    item = Item.all
    render json: item.as_json
  end

  def create
    pp params

    item = Item.new(name: params[:name], description: params[:description], img_url: params[:img_url], category_id: params[:category_id], closet_id: current_user.closet.id)

    if item.save
      render json: item.as_json
    else
      render json: { errors: item.errors.full_messages }, status: 422
    end
  end

  def show
    id = params[:id]
    item = Item.find(id)

    render json: item.as_json
  end

  def update
    id = params[:id]
    item = Item.find(id)

    item.update(
      item.name = params[:name] || item.name,
      item.description = params[:description] || item.description,
      item.img_url = params[:img_url] || item.img_url,
      item.category_id = params[:category_id] || item.category_id
    )
    item.save

    render json: item.as_json
  end

  def destroy
    id = params[:id]
    item = Item.find(id)

    item.destroy

    render json: { message: "item deleted!" }
  end
end
