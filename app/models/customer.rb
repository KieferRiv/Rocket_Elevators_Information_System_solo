class Customer < ApplicationRecord

    belongs_to :user, optional: true
    
    has_one :address
    has_many :buildings, dependent: :destroy
end
