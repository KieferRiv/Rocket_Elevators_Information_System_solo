class BuildingDetail < ApplicationRecord

    belongs_to :building, optional:true 

    has_settings do |s|
        s.key :information
    end
end
