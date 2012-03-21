class AddIconToProducts < ActiveRecord::Migration
  def change
    add_column :products, :icon, :string

  end
end
