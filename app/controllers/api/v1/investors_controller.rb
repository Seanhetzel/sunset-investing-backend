class Api::V1::InvestorsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { investor: InvestorSerializer.new(current_investor) }, status: :accepted
    end

    def create
        @investor = Investor.create(investor_params)
        if @investor.valid?
          render json: { investor: InvestorSerializer.new(@investor) }, status: :created
        else
          render json: { error: 'failed to create investor' }, status: :not_acceptable
        end
      end
     
      private
      def investor_params
        params.require(:investor).permit(:name, :password)
      end
end
