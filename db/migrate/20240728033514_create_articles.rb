class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :content
      t.string :url

      t.timestamps
    end
  end
end
