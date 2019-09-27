class ApplicationController < ActionController::API
    before_action :authorized
 
  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'SECRET_KEY_BASE')
  end
 
  def auth_header
    request.headers['Authorization']
  end
 
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'SECRET_KEY_BASE', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end
 
  def current_investor
    if decoded_token
      investor_id = decoded_token[0]['investor_id']
      @investor = Investor.find_by(id: investor_id)
    end
  end
 
  def logged_in?
    !!current_investor
  end
 
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
