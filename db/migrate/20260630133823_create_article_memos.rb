class CreateArticleMemos < ActiveRecord::Migration[8.1]
  def change
    create_table :article_memos do |t|
      t.string :title
      t.text :body
      t.string :category
      t.string :status

      t.timestamps
    end
  end
end
