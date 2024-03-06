class TypeController < ApplicationController
  before_action :authenticate_request

  def index
    types = Type.all
    render json: TypeBlueprint.render(types, view: :normal)
  end

  def create
    type = Type.new(type_params)

    if type.save
      render json: TypeBlueprint.render(type, view: :normal), status: :created
    else
      render json: type.errors, status: :unprocessable_entity
    end
  end

  private

  def type_params
    params.permit(:name)
  end
end
