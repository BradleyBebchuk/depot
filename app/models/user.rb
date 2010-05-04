class User < ActiveRecord::Base
  
  validates_presence_of   :name
  validates_uniqueness_of :name
  
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  
  def validate
    errors.add_to_base("missing password") if hashed_password.blank?
  end
end
