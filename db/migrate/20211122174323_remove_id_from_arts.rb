class RemoveIdFromArts < ActiveRecord::Migration[6.0]
  def change
    remove_column :arts, :user_id_id
  end
end
