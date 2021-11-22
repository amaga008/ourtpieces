class AddForeignKeyToArts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :arts, :users
  end
end
