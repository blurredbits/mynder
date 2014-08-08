class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer       :member_id
      t.integer       :amount
      t.string        :currency
      t.string        :via
      
      t.timestamps
    end
  end
end
