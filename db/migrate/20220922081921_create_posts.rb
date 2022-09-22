class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :likes
      t.string :tags, array: true, default: []
      t.integer "user_id"
      t.index ["user_id"], name: "index_posts_on_user_id"
      t.timestamps
    end
  end
end
