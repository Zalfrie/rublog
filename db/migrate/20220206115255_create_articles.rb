class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
