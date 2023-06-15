module DocPages
  module ApplicationHelper
    def doc_page_ids
      HighVoltage.page_ids - ["home"]
    end

    def grouped_by_folder
      doc_page_ids.filter { |id| id.include?("/") }.group_by { |id| id.split("/").first }
    end

    def orphans
      doc_page_ids.reject { |id| id.include?("/") }
    end

    def render_orphans
      orphans.map { |page| link_to_page(page) }.join("").html_safe
    end

    def render_grouped
      grouped_by_folder.map do |folder, pages|
        <<~ERB
          <div class="flex flex-col gap-y-2 mb-5">
            <h2 class="text-white font-semibold text-lg hover:cursor-pointer js-folders">#{folder.titleize}</h2>
            <ul class="flex flex-col gap-y-2 hidden js-toggle-hidden">
              #{pages.map { |page| link_to_page(page) }.join.html_safe}
            </ul>
          </div>
        ERB
      end.join("").html_safe
    end

    def link_to_page(page)
      <<~ERB
        <li>
          #{link_to page.split("/").last.titleize, doc_path(page), data: {turbo: false},
            class: "text-white group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold hover:bg-gray-700 hover:text-white"}
        </li>
      ERB
    end
  end
end
