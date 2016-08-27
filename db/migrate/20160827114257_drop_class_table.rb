class DropClassTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :classes
    create_table :cases do |t|
      t.string :title,    null: false
      t.integer :count,   null: false, default: 0
      t.integer :member_id,  null: false
      t.timestamps
    end
    rename_column :articles, :class_id, :case_id
  end
end
