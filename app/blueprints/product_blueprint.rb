# frozen_string_literal: true

class ProductBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :aroma, :benefit, :effect, :form, :type
  end
end
