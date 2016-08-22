class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title               null: false
      t.string :description
      t.text :content
      t.string :image
      t.int :view_count             null: false
      t.int :comment_count          null: false
      t.int :member_id              null: false

      t.timestamps
    end
  end
end
