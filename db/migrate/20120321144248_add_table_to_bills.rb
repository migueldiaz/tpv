class AddTableToBills < ActiveRecord::Migration
  def change
    add_column :bills, :table_id, :integer

  end
end
