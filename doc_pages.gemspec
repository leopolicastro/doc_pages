require_relative "lib/doc_pages/version"

Gem::Specification.new do |spec|
  spec.name        = "doc_pages"
  spec.version     = DocPages::VERSION
 spec.authors = ["lbp"]
  spec.email = ["43428385+leopolicastro@users.noreply.github.com"]
  spec.homepage = "https://github.com/leopolicastro/docs"
  spec.summary = "Summary of Docs."
  spec.description = "Description of Docs."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.5"
  spec.add_dependency "redcarpet"
  spec.add_dependency "high_voltage"
end
