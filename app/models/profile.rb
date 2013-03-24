class Profile < ActiveRecord::Base
  attr_accessible :birthday, :college_id, :female, :political_view_id, :user_id, :website

  # Relationships
  belongs_to :political_view
  has_many :profile_interests
  has_many :interests, :through => :profile_interests
end
