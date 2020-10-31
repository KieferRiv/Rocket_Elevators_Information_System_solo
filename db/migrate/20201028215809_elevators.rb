class Elevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.string :elevatorSerialNumber
      t.string :elevatorModel
      t.string :elevatorType
      t.string :elevatorStatus
      t.string :elevatorDateOfComissioning
      t.string :elevatorDateOfLastInspection
      t.string :elevatorDateOfLastInspection
      t.string :elevatorCertificateOfInspection
      t.string :elevatorInformation
      t.string :elevatorNotes
      t.belongs_to :column

      t.timestamps
    end
  end
end
