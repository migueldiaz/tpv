class AddTableToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :table, :string

  end
end
