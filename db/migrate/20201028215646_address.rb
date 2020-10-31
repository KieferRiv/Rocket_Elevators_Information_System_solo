class Address < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :typeOfAddress
      t.string :addressStatus
      t.string :addressEntity
      t.string :streetNumberAndName
      t.integer :suiteAndApartementNumber
      t.string :cityName
      t.string :postalCode
      t.string :countryAddress
      t.string :addressNotes
      t.belongs_to :customer
      t.belongs_to :building
      t.timestamps
    end
  end
end
