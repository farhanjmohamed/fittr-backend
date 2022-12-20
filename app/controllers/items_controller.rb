class ItemsController < ApplicationController
  def index
    item = Item.all
    render json: item.as_json
  end

  def create
    item = Item.new(name: params[:name], description: params[:description], img_url: params[:img_url], category_id: params[:category_id])

    item.save

    render json: item.as_json
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

    render json: { message: "you've successfully deleted this item!" }
  end
end
