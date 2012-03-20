class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :product
      t.integer :amount
      t.integer :bill_id
      t.timestamps
    end
    add_index :items, :product_id
  end
end
