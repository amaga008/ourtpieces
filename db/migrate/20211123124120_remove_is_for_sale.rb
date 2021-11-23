class RemoveIsForSale < ActiveRecord::Migration[6.0]
  def change
    remove_column :arts, :is_for_sale
  end
end
