# frozen_string_literal: true

class TypeBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name
  end
end
