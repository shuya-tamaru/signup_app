class AddColumnCellphones < ActiveRecord::Migration[5.2]
  def change
    add_column :cellphones, :user_id, :integer
  end
end
