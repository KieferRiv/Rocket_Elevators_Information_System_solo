class Battery < ApplicationRecord

    has_many :columns, dependent: :destroy

    belongs_to :building, optional:true
    belongs_to :employee, optional: true
end