class BenefitController < ApplicationController
  before_action :authenticate_request

  def index
    benefits = Benefit.all
    render json: BenefitBlueprint.render(benefits, view: :normal)
  end

  def create
    benefit = Benefit.new(benefit_params)

    if benefit.save
      render json: BenefitBlueprint.render(benefit, view: :normal), status: :created
    else
      render json: benefit.errors, status: :unprocessable_entity
    end
  end

  private

  def benefit_params
    params.permit(:name)
  end
end
