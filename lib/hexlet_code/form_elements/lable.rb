# frozen_string_literal: true

# class for lable
class Label < Element
  def initialize(name)
    super(name: 'label', attributes: { for: name }, content: name.capitalize)
  end
end
