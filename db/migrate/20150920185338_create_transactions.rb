class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :ttype
      t.string :description
      t.string :merchant
      t.float :amount
      t.integer :account_id

      t.timestamps
    end
  end
end
