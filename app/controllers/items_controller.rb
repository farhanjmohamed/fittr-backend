class ItemsController < ApplicationController
  def index
    item = Item.all
    render json: item.as_json
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
