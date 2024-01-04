# frozen_string_literal: true

# class for submit
class Submit < Element
  def initialize(value)
    super(name: 'input', attributes: { type: 'submit', value: })
  end
end
