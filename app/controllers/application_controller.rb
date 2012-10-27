class ApplicationController < ActionController::Base
  protect_from_forgery

   CbApi.configure_with('config/cb_api.yml')
end
