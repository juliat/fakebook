class PoliticalView < ActiveRecord::Base
  attr_accessible :id, :name, :profile_id

  #Relationships
  belongs_to :profile
end
