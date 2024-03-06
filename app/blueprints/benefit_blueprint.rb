# frozen_string_literal: true

class BenefitBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name
  end
end
