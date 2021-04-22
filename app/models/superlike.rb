class Superlike < ApplicationRecord
    belongs_to :super_liker, class_name: 'User'
    belongs_to :super_likee, class_name: 'User'
end
