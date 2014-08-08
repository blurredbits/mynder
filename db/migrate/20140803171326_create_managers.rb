class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string      :name
      t.integer     :location_id
      t.timestamps
    end
  end
end
