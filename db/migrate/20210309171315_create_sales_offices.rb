class CreateSalesOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :sales_offices do |t|
      t.string :name
      t.string :country
      t.string :city_name
      t.string :city_code

      t.timestamps
    end
  end
end
