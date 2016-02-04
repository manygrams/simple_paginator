module SimplePaginator
  module ActionView
    def simple_paginator(collection, options = {})
      options = default_options.merge(options)

      output = outer_opening_tag(options)

      output += inner_opening_tag(options)
      output += previous_paginator_link(options, collection)
      output += inner_closing_tag(options)

      output += inner_opening_tag(options)
      output += next_paginator_link(options, collection) # if collection.next_page_exists?
      output += inner_closing_tag(options)

      output += "</#{options[:pagination_outer_wrapper_node]}>"

      output.html_safe
    end

    private

    def outer_opening_tag(options)
      "<#{options[:pagination_outer_wrapper_node]} class=\"#{options[:pagination_outer_wrapper_class]}\">"
    end

    def inner_opening_tag(options)
      "<#{options[:pagination_inner_wrapper_node]} class=\"#{options[:pagination_inner_wrapper_class]}\">"
    end

    def previous_paginator_link(options, collection)
    end

    def next_paginator_link(options, collection)
    end

    def inner_closing_tag(options)
      "</#{options[:pagination_inner_wrapper_node]}>"
    end

    def default_options
      {
        pagination_outer_wrapper_node:           "ul",
        pagination_outer_wrapper_class:          "pagination",
        pagination_inner_wrapper_node:           "li",
        pagination_inner_wrapper_class:          "",
        pagination_inner_wrapper_disabled_class: "disabled",
        previous_label:                          "&#8592; Previous",
        next_label:                              "Next &#8594;",
      }
    end

    ::ActionView::Base.send :include, self
  end
end
