class DocsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def handle_call
    if ARGV[0] == "install"
      install
    elsif ARGV[0] == "copy_views"
      copy_views
    end
  end

  private

  def copy_views
    copy_file File.expand_path("#{DocPages::Engine.root}/app/views/shared/_sidebar.html.erb"), "app/views/shared/_sidebar.html.erb"
    copy_file File.expand_path("#{DocPages::Engine.root}/app/views/shared/_desktop_sidebar.html.erb"), "app/views/shared/_desktop_sidebar.html.erb"
    copy_file File.expand_path("#{DocPages::Engine.root}/app/views/shared/_mobile_sidebar.html.erb"), "app/views/shared/_mobile_sidebar.html.erb"
    copy_file File.expand_path("#{DocPages::Engine.root}/app/views/shared/_pages.html.erb"), "app/views/shared/_pages.html.erb"
    copy_file File.expand_path("#{DocPages::Engine.root}/app/views/layouts/doc_pages/markdown.html.erb"), "app/views/layouts/markdown.html.erb"
  end

  def install
    mount_engine
    copy_home_page
    append_to_manifest
  end

  def mount_engine
    route "mount DocPages::Engine, at: \"/docs\""
  end

  def copy_home_page
    copy_file "home.html.md", "app/views/docs/home.html.md"
  end

  def append_to_manifest
    append_to_file "app/assets/config/manifest.js" do
      "//= link doc_pages/application.css\n"
    end
  end
end
