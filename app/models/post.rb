class Post < ActiveRecord::Base
  attr_accessible :content, :timestamp, :user_id

  # Associations
  belongs_to :user

  # Validations
  validates_presence_of :content, :timestamp
  validates_numericality_of :user_id, :only_integer => true, :greater_than => 0, :message => "is not a valid user"

  # Scopes
  scope :by_date, order('timestamp')
end
