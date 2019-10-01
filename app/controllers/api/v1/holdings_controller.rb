class Api::V1::HoldingsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create, :update]

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

    def update
        holding = Holding.find(params[:id])
        holding.update(holding_params)
        render json: holding_params
    end

    private 

    def holding_params
        params.require(:holding).permit(:investor_id, :property_id, :amount)
    end
end
