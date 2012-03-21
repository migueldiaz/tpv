class AddBillsToTables < ActiveRecord::Migration
  def change
    add_column :tables, :bill_id, :integer

  end
end
