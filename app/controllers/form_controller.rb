class FormController < ApplicationController
  before_action :authenticate_request

  def index
    forms = Form.all
    render json: FormBlueprint.render(forms, view: :normal)
  end

  def create
    form = Form.new(form_params)

    if form.save
      render json: FormBlueprint.render(form, view: :normal), status: :created
    else
      render json: form.errors, status: :unprocessable_entity
    end
  end

  private

  def form_params
    params.permit(:name)
  end
end
