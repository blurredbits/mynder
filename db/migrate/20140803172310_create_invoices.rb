class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer       :member_id
      t.timestamps
    end
  end
end
