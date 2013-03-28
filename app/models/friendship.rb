class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"

  # Validations
  validates_numericality_of :user_id, :only_integer => true, :greater_than => 0, :message => "is not a valid user"
  validates_numericality_of :friend_id, :only_integer => true, :greater_than => 0, :message => "is not a valid user"
end
