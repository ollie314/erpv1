require 'digest/sha1'
module Authenticator
 def authenticate(identity, credential)
    user = User.find_by_login identity
    return false if user.nil? or user.password != digest(credential)
    user
  end

  def digest(password)
    Digest::SHA1.hexdigest password
  end
end