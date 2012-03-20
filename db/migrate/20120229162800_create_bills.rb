class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.text :description

      t.timestamps
    end
  end
end
