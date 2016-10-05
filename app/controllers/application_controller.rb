class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  around_filter :global_request_logging

  def global_request_logging 
    logger.info "\n====== REQUEST HEADERS: #{request.headers["access-token"]} ===== \n"
    begin 
      yield 
    ensure 
      logger.info "\n====== RESPONSE HEADERS: #{response.headers} ===== \n"
    end 
  
  end 

  
end
