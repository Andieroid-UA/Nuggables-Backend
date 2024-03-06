# frozen_string_literal: true

class FormBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name
  end
end
