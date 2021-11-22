class AddReferencesToArts < ActiveRecord::Migration[6.0]
  def change
    add_reference :arts, :user, index: true
  end
end
