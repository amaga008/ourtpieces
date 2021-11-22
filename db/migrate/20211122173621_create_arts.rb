class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.integer :starting_price
      t.integer :current_price
      t.string :creator
      t.text :description
      t.string :title
      t.string :category
      t.string :personal_url
      t.string :measurements
      t.boolean :is_for_sale
      t.boolean :is_for_auction
      t.timestamp :auction_end_time
      t.references :user_id

      t.timestamps
    end
  end
end
