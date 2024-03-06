class AromaController < ApplicationController
  before_action :authenticate_request

  def index
    aromas = Aroma.all
    render json: AromaBlueprint.render(aromas, view: :normal)
  end

  def create
    aroma = Aroma.new(aroma_params)

    if aroma.save
      render json: AromaBlueprint.render(aroma, view: :normal), status: :created
    else
      render json: aroma.errors, status: :unprocessable_entity
    end
  end

  private

  def aroma_params
    params.permit(:name)
  end
end
