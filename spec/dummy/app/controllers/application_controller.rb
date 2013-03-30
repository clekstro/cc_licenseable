class ApplicationController < ActionController::Base
  protect_from_forgery
  helper CcLicenseable::Engine.helpers
end
