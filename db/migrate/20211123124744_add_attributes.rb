class AddAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :string
    add_column :users, :street_address, :string
    add_column :users, :postcode, :string
    add_column :users, :personal_url, :string
  end
end
