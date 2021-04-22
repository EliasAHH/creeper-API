class Dislike < ApplicationRecord
    belongs_to :disliker, class_name: 'User'
    belongs_to :dislikee, class_name: 'User'
end
