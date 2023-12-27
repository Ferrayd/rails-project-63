# frozen_string_literal: true

# class for element
class Element
  attr_reader :element

  def initialize(name:, attributes:, content: nil)
    @element = { name:, attributes:, content: }
  end
end
