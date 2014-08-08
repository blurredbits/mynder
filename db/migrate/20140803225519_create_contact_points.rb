class CreateContactPoints < ActiveRecord::Migration
  def change
    create_table :contact_points do |t|
      t.string        :contact_key
      t.string        :contact_value
      t.references    :contactable, polymorphic: true
      t.timestamps
    end
  end
end
