class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :follow_relationships, class_name: "Relationship", foreign_key: 'follower_id'
  has_many :followed_relationships, class_name: "Relationship", foreign_key: 'followed_id'

  def followers
      # return this user's followers
      # use the relationship model

      relationships = self.followed_relationships

      users = []
      relationships.each do |relationship|
        users << relationship.follower_user
      end

      return users
  end

  def follows
    # return all the users that this user follows

    relationships = self.follow_relationships

    users = []
    relationships.each do |relationship|
      users << relationship.followed_user
    end

    return users
  end

end
