class AddMyListIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :my_list_id, :integer
  end
end
