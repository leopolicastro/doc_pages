DocPages::Engine.routes.draw do
  get "/*id" => "docs#show", :as => :doc, :format => false

  root to: "docs#show", id: "home", as: :doc_pages_root
end
