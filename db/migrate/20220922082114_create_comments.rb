class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content

      t.integer "post_id"
      t.index ["post_id"], name: "index_comments_on_post_id"
      t.timestamps
    end
  end
end
