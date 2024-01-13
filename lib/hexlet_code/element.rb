# frozen_string_literal: true

autoload :Input, 'hexlet_code/form_elements/input'
autoload :Label, 'hexlet_code/form_elements/label'
autoload :Submit, 'hexlet_code/form_elements/submit'
autoload :Text, 'hexlet_code/form_elements/text'
# class for element
class Element
  attr_reader :element

  def initialize(name:, attributes:, content: nil)
    @element = { name:, attributes:, content: }
  end
end
