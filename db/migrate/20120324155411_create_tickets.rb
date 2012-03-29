class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :bill

      t.timestamps
    end
    add_index :tickets, :bill_id
  end
end
