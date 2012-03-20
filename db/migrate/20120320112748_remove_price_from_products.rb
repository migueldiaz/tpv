class RemovePriceFromProducts < ActiveRecord::Migration
  def up
  remove_column :products, :price
  end

  def down
  end
end
