class AddNameToDocs < ActiveRecord::Migration[6.0]
  def change
    add_column :docs, :name, :string
  end
end
