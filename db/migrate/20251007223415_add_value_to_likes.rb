class AddValueToLikes < ActiveRecord::Migration[8.0]
  def change
    add_column :likes, :value, :integer, null: false, default: 1
  end
end
