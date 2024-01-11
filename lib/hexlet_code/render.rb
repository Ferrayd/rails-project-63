autoload :HexletCode, 'hexlet_code/hexlet_code'
# doc
class Render
  attr_reader :element

  def initialize(element)
    @element = element
  end

  def render
    Tag.build(element[:name], element[:attributes]) do
      element[:content]
        .map do |child|
          element = child.element
          content = element[:content]
          block_with_content = content && proc { content }
          Tag.build(element[:name], element[:attributes], &block_with_content)
        end
        .join
    end
  end
end
