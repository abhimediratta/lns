Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "replace_header", 
                     :replace => "#spree-header", 
                     :text => "<% if current_page?('/') %> 	<%= render 'spree/shared/banner' %> <% else %> <%= render 'spree/shared/custom_header' %> <% end %>" )