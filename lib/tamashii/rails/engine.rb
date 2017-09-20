# frozen_string_literal: true

module Tamashii
  module Rails
    # :nodoc:
    class Engine < ::Rails::Engine
      isolate_namespace Tamashii::Rails
    end
  end
end
