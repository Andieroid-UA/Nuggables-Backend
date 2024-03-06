class ProductController < ApplicationController
  before_action :authenticate_request, except: [:index]

	  def index
		products = Product.all

		render json: ProductBlueprint.render(products, view: :normal)
	  end

	  def create
		product = @current_user.product.new(product_params)

		if product.save
		  render json: ProductBlueprint.render(product, view: :normal), status: :created
		else
		  render json: product.errors, status: :unprocessable_entity
		end
	  end

	  private

	  def product_params
		params.permit(:aroma, :benefit, :effect, :form, :type)
	  end
end
