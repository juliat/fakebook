class ProfileInterest < ActiveRecord::Base
	attr_accessible :profile_id, :interest_id, :date

	# Relationships
	belongs_to :profile
	belongs_to :interest
end