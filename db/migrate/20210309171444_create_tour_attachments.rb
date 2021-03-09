class CreateTourAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_attachments do |t|
      t.string :type
      t.string :file
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
