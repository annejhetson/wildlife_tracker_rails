class CreateSightings < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :sightings do |t|
      t.column :species_id, :integer
      t.column :date_seen, :date
      t.belongs_to :location

      t.timestamps
    end
  end
end
