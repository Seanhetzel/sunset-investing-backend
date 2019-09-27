class Api::V1::HoldingsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index 
        holdings = Holding.all
        render json: HoldingSerializer.new(holdings).to_serialized_json
    end

    def create
        holding = Holding.new(holding_params)
        if holding.save!
            render json: holding_params
        else
            render :new 
        end
    end

    private 

    def holding_params
        params.require(:investor_id, :property_id, :amount)
    end
end
