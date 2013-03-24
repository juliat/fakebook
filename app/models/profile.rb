class Profile < ActiveRecord::Base
  attr_accessible :birthday, :college_id, :female, :political_view_id, :user_id, :website

  #Relationships
  has_one :political_view
end
