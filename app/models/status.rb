class Status < ApplicationRecord

  # associations
  validates_presence_of :statusName, :statusShort
end
