class CreateArticleStores < ActiveRecord::Migration
  def change
    create_table :article_stores do |t|
      t.integer :author_id
      t.integer :article_id

      t.timestamps
    end
  end
end
