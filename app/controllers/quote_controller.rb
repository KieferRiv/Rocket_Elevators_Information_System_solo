class QuotesController < ApplicationController  

    before_action :set_quote, only: [:show, :edit, :update, :destroy]
    def new
        @quote = Quote.new
    end

end
