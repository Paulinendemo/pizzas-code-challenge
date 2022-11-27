class ApplicationController < ActionController::Base
    skip_bfore_action :verify_authenticity_token
end
