# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
  identifier :id

  view :me do
    fields :first_name, :last_name, :username, :email
  end

  view :normal do
    fields  :username
  end

  end
end
