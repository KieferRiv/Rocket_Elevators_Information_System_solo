class Columns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.integer :numberOfServedFloors
      t.string :columnType
      t.string :columnStatus
      t.string :columnInformation
      t.string :columnNotes
      t.belongs_to :battery

      t.timestamps
    end
  end
end
