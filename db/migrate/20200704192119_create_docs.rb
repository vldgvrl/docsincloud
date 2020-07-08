class CreateDocs < ActiveRecord::Migration[6.0]
  def change
    create_table :docs do |t|
      t.integer :user_id
      t.string :name
      t.string :attachment

      t.timestamps
    end

    add_index :docs, :user_id
  end
end
