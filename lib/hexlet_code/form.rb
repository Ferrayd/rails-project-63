# frozen_string_literal: true

autoload('Element', 'hexlet_code/element')
class Form < Element
  def initialize(entity, attributes:)
    @entity = entity
    super(name: 'form', attributes:, content: [])
  end

  def input(name, as: :input, **)
    @element[:content] << Label.new(name)
    value = @entity.public_send(name)
    control_class = Form.const_get(as.capitalize)
    @element[:content] << control_class.new(name, value, **)
  end

  def submit(value = 'Save')
    @element[:content] << Submit.new(value)
  end
end
