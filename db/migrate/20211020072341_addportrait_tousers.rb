class AddportraitTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :portrait, :string
  end
end
