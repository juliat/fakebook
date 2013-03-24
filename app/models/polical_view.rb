class PolicalView < ActiveRecord::Base
  attr_accessible :id, :name

  #Relationships
  belongs_to :profile

end
