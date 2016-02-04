module SimplePaginator
  module ActiveRecord
    module Pagination
      def page(page_number)
        relation = all

        offset = page_number.to_i * relation.limit_value
        relation = all.offset(offset)
        relation
      end

      def next_page_exists?
        relation = all

        offset = relation.offset_value + relation.limit_value
        all.offset(offset).limit(1).present?
      end

      def previous_page_exists?
        all.offset_value != 0
      end
    end

    ::ActiveRecord::Base.extend Pagination
  end
end
