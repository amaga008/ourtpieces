class AddDidWin < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :did_win, :boolean
  end
end
