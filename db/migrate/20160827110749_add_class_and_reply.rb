class AddClassAndReply < ActiveRecord::Migration[5.0]
  def change
    create_table :classes do |t|
      t.string :title,    null: false
      t.integer :count,   null: false, default: 0
      t.integer :member_id,  null: false
      t.timestamps
    end
    add_column :articles, :class_id, :integer

    create_table :replies do |t|
      t.integer :member_id, null: false
      t.text :body,       limit: 65535
      t.integer :markup,  default: 0, null: false
      t.integer :article_id, null: false
      t.integer :parent_id
      t.timestamps
    end
  end
end
