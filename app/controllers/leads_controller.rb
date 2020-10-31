class LeadsController < ApplicationController

    before_action :set_lead, only: [:show, :edit, :update, :destroy]
    def new
    @lead = Lead.new
    end
    def create
       

        @lead = Lead.new()

        @lead.contactFullName = params['ContactName']
        @lead.companyName = params['CompanyName']
        @lead.Email = params['Email']
        @lead.phone = params['Phone']
        @lead.projectName = params['ProjectName']
        @lead.projectDescription = params['Description']
        @lead.department = params['Department']
        @lead.message = params['Message']
        @lead.attachedFile = params[:Attachment]

        @lead.save!
    end

    def index
        @lead = Lead.all
    end 






    
end