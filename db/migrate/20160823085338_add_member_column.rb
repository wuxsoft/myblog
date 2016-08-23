class AddMemberColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :alias, :string
  end
end
