class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://erp.corthay.self.local'
    headers['Access-Control-Request-Method'] = 'POST, GET, PUT, DELETE'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, X-CSRF-Token,  Accept'
    headers['Access-Control-Allow-Credentials'] = 'true'
  end
end
