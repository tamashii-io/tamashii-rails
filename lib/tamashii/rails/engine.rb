# frozen_string_literal: true

module Tamashii
  module Rails
    # :nodoc:
    class Engine < ::Rails::Engine
      isolate_namespace Tamashii::Rails

      config.generators.test_framework :rspec
    end
  end
end
