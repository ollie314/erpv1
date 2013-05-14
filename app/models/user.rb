require 'authenticator'

class User < ActiveRecord::Base
  include Authenticator

  has_one :contact
  has_many :timesheets
  validates :mail, :presence => true, :uniqueness => true, :email =>  true
  attr_accessible :active, :mail, :password

  def self.authenticate(identity, credential)
    user = User.find_by_mail identity
    return nil if user.nil? or user.password != digest(credential)
    user
  end

  def self.digest(password)
    Digest::SHA1.hexdigest password
  end

end
