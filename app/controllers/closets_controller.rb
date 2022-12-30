class ClosetsController < ApplicationController
  def show
    id = params[:id]
    closet = Closet.find(id)

    render json: closet.as_json
  end
end
