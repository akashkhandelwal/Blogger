class AddNameColumnToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :name, :string
  end
end
