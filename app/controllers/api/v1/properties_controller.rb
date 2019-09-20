class Api::V1::PropertiesController < ApplicationController
    def index 
        properties = Property.all
        render json: PropertySerializer.new(properties).to_serialized_json
    end

    # def create
    #     property = Property.new(property_params)
    #     if property.save!
    #         render json: property_params
    #     else
    #         render :new 
    #     end
    # end

    # private 

    # def property_params
    #     params.permit(:id, :high_property, :display_name)
    # end
end
