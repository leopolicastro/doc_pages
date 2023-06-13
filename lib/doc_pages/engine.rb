require "high_voltage"
require "redcarpet"

module DocPages
  class Engine < ::Rails::Engine
    isolate_namespace DocPages

      initializer "engine_name.assets.precompile" do |app|
      # app.config.assets.precompile += %w[docs_manifest.js]
      app.config.assets.precompile += %w[config/doc_pages_manifest.js]
    end
  end
end
