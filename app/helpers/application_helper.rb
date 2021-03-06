module ApplicationHelper
	def custom_taxons_tree(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :li do
        root_taxon.children.map do |taxon|
          link_to(taxon.name, seo_url(taxon)) + taxons_tree(taxon, current_taxon, max_level - 1)
        end.join("\n").html_safe
      end
    end
end
