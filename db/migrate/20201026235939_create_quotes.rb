class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :buildingType
      t.integer :apartmentNumbers
      t.integer :numberOfFloors
      t.integer :numberOfBasements
      t.integer :numberOfStores
      t.integer :numberCages
      t.integer :parkingLevels
      t.integer :numberOfCompanies
      t.integer :occupantsPerFloor
      t.integer :estimatedCagesNeeded
      t.string :packageSelection
      t.decimal :elevatorPrice, precision:10, scale:2
      t.decimal :installationCost, precision:10, scale:2
      t.decimal :totalPrice, precision:10, scale:2
      t.timestamps
    end
  end
end
