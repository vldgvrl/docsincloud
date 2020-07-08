class AddIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :docs, :user_id 
  end
end
