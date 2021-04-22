class User < ApplicationRecord
    has_secure_password
    # Self join for LIkes
    has_many :liked_users, foreign_key: :liker_id, class_name: 'Like'
    has_many :likes, through: :liked_users

    has_many :likee_users, foreign_key: :likee_id, class_name: 'Like'
    has_many :likees, through: :likee_users

   # Self Join for Dislikes
    has_many :disliked_users, foreign_key: :disliker_id, class_name: 'Dislike'
    has_many :dislikes, through: :disliked_users

    has_many :dislikee_users, foreign_key: :dislikee_id, class_name: 'Dislike'
    has_many :dislikees, through: :dislikee_users

  # Self join for SuperLikes
    has_many :super_liked_users, foreign_key: :super_liker_id, class_name: 'Superlike'
    has_many :super_likes, through: :super_liked_users

    has_many :super_likee_users, foreign_key: :super_likee_id, class_name: 'Superlike'
    has_many :likees, through: :likee_users


      def instance_to_json
        {
           name: self.name,
           likedUsers: self.liked_users,
           likedBy: self.likees,
           superLikedUsers: self.super_liked_users,
           dislikedUsers: self.disliked_users
        }
    end 
end
