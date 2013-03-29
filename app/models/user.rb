class User < ActiveRecord::Base
  attr_accessible :crypted_password, :friend_requests, :password, :password_confirmation, :date_of_birth, :email, :first_name, :gender, :interests, :last_name, :password_salt, :persistence_token, :political_affiliation, :religion, :username
  acts_as_authentic
  serialize :interests, Array

  # Associations
  has_many :friend_requests, :foreign_key => "to_id"
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  has_many :posts

  # Validations
  validates_presence_of :first_name, :last_name, :date_of_birth, :username, :email
  validates_date :date_of_birth, :on_or_before => lambda { 13.years.ago }, :on_or_before_message => "must be at least 13 years old"
  validates_inclusion_of :gender, :in => ['male', 'female']

  # Other methods
  def name
    "#{first_name} #{last_name}"
  end
  
  def age
    return nil if date_of_birth.blank?
    (Time.now.to_s(:number).to_i - date_of_birth.to_time.to_s(:number).to_i)/10e9.to_i
  end

  def get_friends
    friends + inverse_friends
  end

  def newsfeed
    feed = []
    # to be continued
  end

end