class Profile < ActiveRecord::Base
  attr_accessible :birthday, :college_id, :female, :political_views_id, :user_id, :website
end
