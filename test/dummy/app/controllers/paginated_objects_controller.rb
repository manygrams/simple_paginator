class PaginatedObjectsController < ApplicationController
  def index
    @paginated_objects = PaginatedObject.limit(40).page(params[:page])
  end
end
