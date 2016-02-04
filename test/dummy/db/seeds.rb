ActiveRecord::Base.transaction do
  101.times { PaginatedObject.create! }
end
