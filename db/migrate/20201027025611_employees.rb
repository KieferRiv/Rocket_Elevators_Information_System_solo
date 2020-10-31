class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :LastName
      t.string :FirstName
      t.string :Function
    end
  end
end
