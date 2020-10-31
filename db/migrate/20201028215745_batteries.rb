class Batteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :buildingType
      t.string :batteryStatus
      t.string :commissioningDate
      t.string :lastInspectionDate
      t.string :operationCertificate
      t.string :batteryInformation
      t.string :batteryNotes
      t.belongs_to :employee
      t.belongs_to :building
      t.timestamps
    end
  end
end
