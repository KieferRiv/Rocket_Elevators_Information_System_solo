class Address < ApplicationRecord
    
    belongs_to :customer, optional: true
    belongs_to :building, optional: true
    
end