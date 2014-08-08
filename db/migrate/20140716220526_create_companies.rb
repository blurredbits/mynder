class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string      :company_name
      t.references  :addressable, polymorphic: true
      t.references  :contactable, polymorphic: true
      t.timestamps
    end
  end
end
