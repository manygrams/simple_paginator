class CreatePaginatedObjects < ActiveRecord::Migration
  def change
    create_table :paginated_objects do |t|

      t.timestamps null: false
    end
  end
end
