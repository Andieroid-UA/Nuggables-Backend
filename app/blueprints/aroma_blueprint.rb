# frozen_string_literal: true

class AromaBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name
  end
end
