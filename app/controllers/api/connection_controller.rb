require 'mail'
class Api::ConnectionController < ApplicationController

  respond_to :json, :xml

  AUTHENT_SUCCESS = 0
  AUTHENT_FAILURE = 1
  AUTHENT_INVALID = 2
  AUTHENT_CORRUPT_DATA = 3

  SUCCESS_STATUS = 200
  BAD_STATUS = 400
  UNAUTHORIZED_STATUS = 401
  FORBIDDEN_STATUS = 403
  NOT_FOUND_STATUS = 404
  METHOD_NOT_ALLOWED_STATUS = 405
  NOT_ACCEPTABLE_STATUS = 406

  def signin
    login = params[:login]
    password = params[:password]
    status = nil
    if is_valid_mail? login
      user = User.authenticate login, password
      if user.nil?
        response = {:code => AUTHENT_INVALID, :message => 'Unknown authentication parameters'}
        status = UNAUTHORIZED_STATUS
      else
        response = {:user => {:mail => login, :groups => %w(admin poweruser user)}}
        status = SUCCESS_STATUS
      end
    else
      response = {:code => AUTHENT_CORRUPT_DATA, :message => 'invalid mail format'}
      status = BAD_STATUS
    end
    status = UNAUTHORIZED_STATUS if status.nil?
    respond_with(response.to_hash, :status => status, :location => '/#hub')
  end

  def signout
  end

  def signup
  end

  private
  def is_valid_mail?(mail)
    begin
      m = Mail::Address.new mail
      valid = (m.domain && m.address).nil? ? false : true
    rescue Exception => e
      valid = false
    end
    valid
  end
end
