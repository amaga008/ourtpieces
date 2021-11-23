class RemoveCurrentPrice < ActiveRecord::Migration[6.0]
  def change
    remove_column :arts, :current_price
  end
end
