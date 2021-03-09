class RemoveCityNameFromSegment < ActiveRecord::Migration[6.1]
  def change
    remove_column :segments, :city_name
  end
end
