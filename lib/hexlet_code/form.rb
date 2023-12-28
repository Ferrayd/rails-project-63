# frozen_string_literal: true

autoload('Element', 'hexlet_code/element')
# class for form
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

  # class for submit
  class Submit < Element
    def initialize(value)
      super(name: 'input', attributes: { type: 'submit', value: })
    end
  end

  # class for lable
  class Label < Element
    def initialize(name)
      super(name: 'label', attributes: { for: name }, content: name.capitalize)
    end
  end

  # class for input
  class Input < Element
    def initialize(name, value, **kwargs)
      super(name: 'input', attributes: { name:, type: 'text', value:, **kwargs })
    end
  end

  # class for text
  class Text < Element
    def initialize(name, value, **kwargs)
      default_params = { cols: '20', rows: '40' }
      params = default_params.merge(kwargs)
      super(name: 'textarea', attributes: { name:, **params }, content: value)
    end
  end
end
