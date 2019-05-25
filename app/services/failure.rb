# frozen_string_literal: true

class Failure < Response
  def success?
    false
  end
end
