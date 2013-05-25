require 'digest'

class ErpInstaller
  # To change this template use File | Settings | File Templates.

  def initialize

  end

  #
  # install default profiles in the application
  #
  def install_profiles
    ContactProfile.transaction do
      provider = ContactProfile.new({:name => 'provider', :info => 'Describe a provider profile'})
      provider.save
      contact = ContactProfile.new({:name => "contact", :info => "A simple contact"})
      contact.save
      client = ContactProfile.new({:name => "client", :info => "A simple client"})
      client.save
      third_party = ContactProfile.new({:name => "third party", :info => "Represents providers like architect, carpenter, ..."})
      third_party.save
      employee = ContactProfile.new({:name => "employee", :info => "Represents company employee"})
      employee.save
    end
  end

  #
  # Install default product.
  #
  def install_units
    UnitType.transaction do
      piece = UnitType.new({:name => 'piece', :description => 'Represents a piece of something'})
      piece.save
      m2 = UnitType.new({:name => 'm2', :description => 'Represents a square meter'})
      m2.save
      m3 = UnitType.new({:name => 'm3', :description => 'Represents a volume'})
      m3.save
      meter = UnitType.new({:name => 'meter', :description => 'Represent a meter'})
      meter.save
      other = UnitType.new({:name => 'other', :description => 'Represent something else'})
      other.save
    end
  end

  def install_users
    User.transaction do
      root = User.new(:active => 1, :mail => 'web@simnetsa.ch', :password => Digest::SHA1.hexdigest('simnet@1936'))
      root.save
      mlefebvre = User.new(:active => 1, :mail => 'mlefebvre@simnetsa.ch', :password => Digest::SHA1.hexdigest('simnet@1936'))
      mlefebvre.save
      msimon = User.new(:active => 1, :mail => 'gsimon@simnetsa.ch', :password => Digest::SHA1.hexdigest('simnet@1936'))
      msimon.save
      admin = User.new(:active => 1, :mail => 'admin@simnetsa.ch', :password => Digest::SHA1.hexdigest('simnet@1936'))
      admin.save
      user1 = User.new(:active => 1, :mail => 'gaylord@corthaybois.ch', :password => Digest::SHA1.hexdigest('demodemo'))
      user1.save
    end
  end
end