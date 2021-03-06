class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :space_id
      t.string :address
      t.float :longitude
      t.float :latitude
      t.belongs_to :space

      t.timestamps
    end
  end
end
