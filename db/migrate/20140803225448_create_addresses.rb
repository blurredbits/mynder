class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string      :street_line_one
      t.string      :street_line_two
      t.string      :city
      t.string      :region
      t.string      :postal_cost
      t.string      :country
      t.references  :addressable, polymorphic: true

      t.timestamps
    end
  end
end
