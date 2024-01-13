# frozen_string_literal: true

require_relative 'hexlet_code/version'
autoload(:Form, 'hexlet_code/form')
autoload(:Tag, 'hexlet_code/tag')
autoload(:Render, 'hexlet_code/render.rb')
# main module
module HexletCode
  class Error < StandardError; end

  def self.form_for(entity, url: '#', method: 'post', **kwargs)
    form = Form.new entity, attributes: { action: url, method:, **kwargs }
    yield form
    element = form.element
    renderer = Render.new(element)
    renderer.render
  end
end
