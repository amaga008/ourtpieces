class AddIsForSale < ActiveRecord::Migration[6.0]
  def change
    add_column :arts, :is_for_sale, :boolean, :default => true
  end
end
