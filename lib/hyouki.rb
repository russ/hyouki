require 'hyouki/version'

module Hyouki
  class Engine < Rails::Engine
    isolate_namespace Hyouki
  end
end
