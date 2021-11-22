class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :amount
      t.timestamp :bid_timestamp
      t.references :user, null: false, foreign_key: true
      t.references :art, null: false, foreign_key: true

      t.timestamps
    end
  end
end
