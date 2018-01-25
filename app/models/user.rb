class User < ApplicationRecord

  attr_accessor(:groupID, :licenseID, :groupHint, :email, :password, :firstName, :lastName, :lastLogin, :created, 
:modified, :timezone, :passwordExpires, :verifyToken, :is_enabled, :is_verified)
 
  #validations
  validates_presence_of :groupID, :licenseID, :groupHint, :email, :password, :firstName, :lastName, :lastLogin, :created, :modified, :timezone, :passwordExpires, :verifyToken, :is_enabled, :is_verified
end
