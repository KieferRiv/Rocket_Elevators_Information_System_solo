# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

require_relative '../lib/populator_fix.rb'


500.times  do 
     Customer.create!(
        customersCreationDate: Faker::Time.between(from: 1000.days.ago, to: Time.now) ,
        companyName: Faker::Company.industry,

        companyContactFullName: Faker::FunnyName.name,
        companyContactPhone: Faker::PhoneNumber.cell_phone,
        companyContactEmail: Faker::Internet.email,
        companyDescription: Faker::Company.industry,
        technicalAuthorityFullName: Faker::FunnyName.name,
        technicalAuthorityPhone: Faker::PhoneNumber.cell_phone,
        technicalManagerEmail: Faker::Internet.email,
       
        )
end

typeArr = ["Shipping", "Billing", "Home", "Business"]
status = ["Active", "Inactive"]
entity = ["Building", "Customer"]

Customer.find_each do |c| 


    build = c.buildings.create!(
           
            AdminName: Faker::FunnyName.name,
            AdminEmail: Faker::Internet.email,
            AdminPhone: Faker::PhoneNumber.cell_phone,
            TechName: Faker::FunnyName.name,
            TechEmail: Faker::Internet.email,
            TechPhone: Faker::PhoneNumber.cell_phone,
           
        )

   

end

Building.find_each do |c|

    c.building_detail = BuildingDetail.create!(
        ##building_id: b.id
    )

end




buildType = ["Commercial", "Residential", "Corporate"]
model = ["Standard", "Premium", "Excelium"]

Customer.find_each do |c|

    rdm = rand(1..3)

    rdm.times{

        c.quotes.create!(
            buildingType: buildType[rand(0..2)],
            estimatedCagesNeeded: rand(5..20),
            packageSelection: model[rand(0..2)],
            totalPrice: rand(15000..75000)
        )

    }

end


200.times do 
    Admin.create!(
    email:  Faker::Internet.email,
    encrypted_password:  "123456",
    firstname:  Faker::Name.first_name,
    lastname:  Faker::Name.last_name , 
    function:  "Employee"
    )
end


Building.find_each do |b|


    x = Admin.find(rand(1..200)).id
    rnd = rand(1..3)
    a = buildType[rand(0..2)]

    rnd.times {

        b.batteries.create!(
            buildingType: a,
            employee_id: x,
            batteryStatus: status[rand(0..1)],
            commissioningDate:Faker::Time.between(from: 1000.days.ago, to: Time.now),
            lastInspectionDate:Faker::Time.between(from: 1000.days.ago, to: Time.now),
            operationCertificate: Faker::Barcode.upc_e_with_composite_symbology,  
            batteryInformation: Faker::Quote.most_interesting_man_in_the_world,
            batteryNotes: Faker::Quote.most_interesting_man_in_the_world
        )


    }
 
end

Battery.find_each do |bat|

    rnd = rand(3..5)
    s = rand(10..30)

    rnd.times{
 
        bat.columns.create!(
            numberOfServedFloors: s,
            columnType: bat.buildingType,
            columnStatus: status[rand(0..1)],
            columnInformation: Faker::Quote.most_interesting_man_in_the_world,
            columnNotes: Faker::Quote.most_interesting_man_in_the_world
        )

    }

end

Column.find_each do |col|

    rnd = rand(2..5)
    mod = model[rand(0..2)]

    rnd.times {

        col.elevators.create!(
            elevatorSerialNumber: Faker::Barcode.ean(8), 
            elevatorModel: mod,
            elevatorType: col.columnType,
            elevatorStatus: status[rand(0..1)],
            elevatorDateOfComissioning: Faker::Time.between(from: 1000.days.ago, to: Time.now),
            elevatorDateOfLastInspection: Faker::Time.between(from: 1000.days.ago, to: Time.now),
            elevatorCertificateOfInspection: Faker::Barcode.upc_e_with_composite_symbology,
            elevatorInformation: Faker::Quote.most_interesting_man_in_the_world,
            elevatorNotes: Faker::Quote.most_interesting_man_in_the_world
        )

    }

end

1500.times  do    
    Lead.create!(
        contactFullName: Faker::FunnyName.name,
        companyName: Faker::Company.industry,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        projectName: Faker::FunnyName.name,
        projectDescription: Faker::Quote.most_interesting_man_in_the_world,
        department: "Customer Service",
        message: Faker::Quote.most_interesting_man_in_the_world,
        attachedFile:"file",
        contactcreationdate: Faker::Time.between(from: 1000.days.ago, to: Time.now)
    )
    
end

500.times  do   
    Lead.create!(
        contactFullName: Faker::FunnyName.name,
        companyName: Faker::Company.industry,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        projectName: Faker::FunnyName.name,
        projectDescription: Faker::Quote.most_interesting_man_in_the_world,
        department: "Customer Service",
        message: Faker::Quote.most_interesting_man_in_the_world,
        attachedFile:"file",
        contactcreationdate: Faker::Time.between(from: 1000.days.ago, to: Time.now)
        )
    
end