class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :number
      t.string :atype
      t.integer :user_id

      t.timestamps
    end
  end
end
