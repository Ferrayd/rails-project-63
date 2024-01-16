# frozen_string_literal: true

class Text < Element
  def initialize(name, value, **kwargs)
    default_params = { cols: '20', rows: '40' }
    params = default_params.merge(kwargs)
    super(name: 'textarea', attributes: { name:, **params }, content: value)
  end
end
