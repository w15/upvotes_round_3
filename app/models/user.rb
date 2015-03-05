class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  def followers
      # return this user's followers
      # use the relationship model

      relationships = Relationship.where(followed_id: self.id)

      users = []
      relationships.each do |relationship|
        users << User.find_by(id: relationship.follower_id)
      end

      return users
  end

  def follows
    # return all the users that this user follows
  end

end
