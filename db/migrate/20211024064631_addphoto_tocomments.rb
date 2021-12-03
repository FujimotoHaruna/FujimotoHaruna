class AddphotoTocomments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :photo, :string
  end
  
end
