class AddAuthorIdColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :author_id, :integer
  end
end
