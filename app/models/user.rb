class User < ApplicationRecord
    has_secure_password
    has_many :liked_users, foreign_key: :liker_id, class_name: 'Like'
    has_many :likes, through: :liked_users

    has_many :likee_users, foreign_key: :likee_id, class_name: 'Like'
    has_many :likees, through: :likee_users


    def instance_to_json
        {
           username: self.username
        }
    end 
end
