class EffectController < ApplicationController
  before_action :authenticate_request

  def index
    effects = Effect.all
    render json: EffectBlueprint.render(effects, view: :normal)
  end

  def create
    effect = Effect.new(effect_params)

    if effect.save
      render json: EffectBlueprint.render(effect, view: :normal), status: :created
    else
      render json: effect.errors, status: :unprocessable_entity
    end
  end

  private

  def effect_params
    params.permit(:name)
  end
end
