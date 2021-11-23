class RemovePersonalUrl < ActiveRecord::Migration[6.0]
  def change
    remove_column :arts, :personal_url
  end
end
