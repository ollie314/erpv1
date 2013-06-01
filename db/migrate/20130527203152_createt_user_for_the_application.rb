require 'digest'
class CreatetUserForTheApplication < ActiveRecord::Migration
  def up
    User.transaction do
      user = User.new(:mail => 'mlefebvre@simnetsa.ch', :password => Digest::SHA1.hexdigest('simnet@1936'), :active => 1)
      user.save;
      user = User.new(:mail => 'admin@corthaybois.ch', :password => Digest::SHA1.hexdigest('adminadmin'), :active => 1)
      user.save
    end
  end

  def down
    User.transaction do
      user = User.find_by_mail 'mlefebvre@simnetsa.ch'
      user.delete unless user.nil?
      user = User.find_by_mail 'admin.corthaybois.ch'
      user.delete unless user.nil?
    end
  end
end
