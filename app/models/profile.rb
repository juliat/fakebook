class Profile < ActiveRecord::Base
  attr_accessible :birthday, :college_id, :female, :political_view_id, :user_id, :website, :user, :interests

  # Relationships
  belongs_to :political_view
  belongs_to :user
  belongs_to :college
  belongs_to :profile_interests
  has_many :interests, :through => :profile_interests
end
