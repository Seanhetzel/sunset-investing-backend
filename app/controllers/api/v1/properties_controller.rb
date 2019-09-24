class Api::V1::PropertiesController < ApplicationController
    def index 
        properties = Property.all
        render json: PropertySerializer.new(properties).to_serialized_json
    end

    # def show
    #     property = Property.find(property_params[id])
    # end

    def create
        property = Property.new(property_params)
        if property.save!
            render json: property_params
        else
            render :new 
        end
    end

    private 

    def property_params
        params.require(:id, :price, :rent, :year_built, :last_year_appreciation, :next_year_appreciation, :lease_length, :beds_baths_sqft, :description, :zone, :address)
    end
end
