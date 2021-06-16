# frozen_string_literal: true

module HexletCode
  autoload :Version, 'hexlet_code/version'
  autoload :Tag, 'hexlet_code/tag'
  autoload :Form, 'hexlet_code/form'
  autoload :Label, 'hexlet_code/tags/label'
  autoload :Input, 'hexlet_code/tags/input'
  autoload :Textarea, 'hexlet_code/tags/textarea'
  autoload :Submit, 'hexlet_code/tags/submit'

  class << self
    def form_for(model, route = '#')
      form = Form.new model
      yield(form) if block_given?
      form.build route
    end
  end
end
