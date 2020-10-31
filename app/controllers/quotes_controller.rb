class QuotesController < ApplicationController  

    before_action :set_quote, only: [:show, :edit, :update, :destroy]
    def new
        @quote = Quote.new
    end
           
    def create

        buildingType = params['buildingType']

        @quote = Quote.new()
        
        @quote.buildingType = buildingType
        
    
    
        if buildingType == 'residential'
          @quote.apartmentNumbers = params['esidentialApartmentNumbers']
          @quote.numberOfFloors = params['ResidentialNumberOfFloors']
          @quote.numberOfBasements = params['ResidentialNumberOfBasements']

          @quote.estimatedCagesNeeded = params['estimatedCagesNeeded']
          @quote.packageSelection = params['packageSelection']
        
          @quote.elevatorPrice =  params['elevatorPrice']
          @quote.installationCost = params['installationCost']
          @quote.totalPrice = params['totalPrice']
          
          @quote.save!
         

      
        end
    
        if buildingType == 'commercial'
          @quote.numberOfFloors = params['CommercialNumberOfFloors']
          @quote.numberOfStores = params['CommercialNumberOfStores']
          @quote.numberOfBasements = params['CommercialNumberOfBasements']
          @quote.numberCages = params['CommercialNumberCages']
          @quote.parkingLevels = params['CommercialParkingLevels']
    
          @quote.estimatedCagesNeeded = params['estimatedCagesNeeded']
          @quote.packageSelection = params['packageSelection']
         
          @quote.elevatorPrice =  params['elevatorPrice']
          @quote.installationCost = params['installationCost']
          @quote.totalPrice = params['totalPrice']
       
          @quote.save!
         
          
      
        end
    
        if buildingType == 'corporate'
          @quote.numberOfCompanies = params['CorporateNumberOfCompanies']
          @quote.numberOfFloors = params['CorporateNumberOfFloors']
          @quote.numberOfBasements = params['CorporateNumberOfBasements']
          @quote.parkingLevels = params['CorporateParkingLevels']
          @quote.occupantsPerFloor = params['CorporateOccupantsPerFloor']
    
          @quote.estimatedCagesNeeded = params['estimatedCagesNeeded']
          @quote.packageSelection = params['packageSelection']
       
          @quote.elevatorPrice =  params['elevatorPrice']
          @quote.installationCost = params['installationCost']
          @quote.totalPrice = params['totalPrice']
           
          @quote.save!
         
        end
    
        if buildingType == 'hybrid'
          @quote.numberOfStores = params['HybridNumberOfStores']
          @quote.numberOfFloors = params['HybridNumberOfFloors']
          @quote.numberOfBasements = params['HybridNumberOfBasements']
          @quote.parkingLevels = params['HybridParkingLevels']
          @quote.occupantsPerFloor =  params['HybridOccupantsPerFloor']
      
    
          @quote.estimatedCagesNeeded = params['estimatedCagesNeeded']
          @quote.packageSelection = params['packageSelection']
       
          @quote.elevatorPrice =  params['elevatorPrice']
          @quote.installationCost = params['installationCost']
          @quote.totalPrice = params['totalPrice']
       
          @quote.save!
         

        end
        
    end  

  def index
      @quote = Quote.all
  end  


end
