module DocPages
  class DocsController < ApplicationController
    include HighVoltage::StaticPage

    layout "doc_pages/markdown"
  end
end
