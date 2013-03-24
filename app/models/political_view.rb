class PoliticalView < ActiveRecord::Base
  attr_accessible :id, :name

  #Relationships
  has_many :profiles
end
