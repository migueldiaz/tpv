class AddStatusToBills < ActiveRecord::Migration
  def change
    add_column :bills, :status, :boolean,:default=>0

  end
end
