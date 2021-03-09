class AddDestinationOfficeToSegment < ActiveRecord::Migration[6.1]
  def change
    change_table :segments do |t|
      t.references :destination_office
    end
  end
end
