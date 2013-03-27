class College < ActiveRecord::Base
  attr_accessible :id, :location, :name

  #Relationships
  has_many :profiles
end
