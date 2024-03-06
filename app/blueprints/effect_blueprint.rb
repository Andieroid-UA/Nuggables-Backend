# frozen_string_literal: true

class EffectBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name
  end
end
