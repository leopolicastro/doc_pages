require "handlers/markdown_handler"

HighVoltage.configure do |config|
  config.routes = false
  config.content_path = "docs/"
  # config.home_page = "home"
end

ActionView::Template.register_template_handler(
  :md,
  Handlers::MarkdownHandler.new
)
