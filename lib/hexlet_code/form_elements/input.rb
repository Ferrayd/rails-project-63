# frozen_string_literal: true

class Input < Element
  def initialize(name, value, **kwargs)
    super(name: 'input', attributes: { name:, type: 'text', value:, **kwargs })
  end
end
