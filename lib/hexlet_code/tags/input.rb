# frozen_string_literal: true

module HexletCode
  # Tag Builder
  class Input
    def initialize(attributes, label)
      @attributes = attributes
      @label = label
    end

    attr_accessor :attributes, :label

    def build
      [
        label.build,
        Tag.build('input', **attributes)
      ]
    end
  end
end
