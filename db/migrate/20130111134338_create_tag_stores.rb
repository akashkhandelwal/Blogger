class CreateTagStores < ActiveRecord::Migration
  def change
    create_table :tag_stores do |t|
      t.integer :author_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
