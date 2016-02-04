module SimplePaginator
  module ActionView
    def simple_paginator(collection, options = {})
      options[:previous_label] ||= "<div>&#8592; Previous</div>"
      options[:next_label]     ||= "<div>Next &#8594;</div>"

      output = ""
      output += options[:previous_label] if collection.previous_page_exists?
      output += options[:next_label] if collection.next_page_exists?

      output.html_safe
    end

    ::ActionView::Base.send :include, self
  end
end
