class CreateSegments < ActiveRecord::Migration[6.1]
  def change
    create_table :segments do |t|
      t.string :city_name
      t.date :segment_date
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
