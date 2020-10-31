class Customers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customersCreationDate
      t.string :companyName
      t.string :companyHHAddress
      t.string :companyContactFullName
      t.string :companyContactPhone
      t.string :companyContactEmail
      t.string :companyDescription
      t.string :technicalAuthorityFullName
      t.string :technicalAuthorityPhone
      t.string :technicalManagerEmail
      t.string :customerCity
    
    end
  end
end
