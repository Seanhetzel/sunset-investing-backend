class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      @investor = Investor.find_by(name: investor_login_params[:name])
      if @investor && @investor.authenticate(investor_login_params[:password])
        token = encode_token({ investor_id: @investor.id })
        render json: { investor: InvestorSerializer.new(@investor), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid name or password' }, status: :unauthorized
      end
    end
   
    private
   
    def investor_login_params
      params.require(:investor).permit(:name, :password)
    end
end
