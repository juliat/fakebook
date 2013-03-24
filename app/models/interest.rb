class Interest < ActiveRecord::Base
	attr_accessible :name

	# Relationships
	has_many :profile_interests
	has_many :profiles, :through => :profile_interests
end