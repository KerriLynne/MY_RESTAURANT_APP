class Review < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :user
    # validates :num_rating, presence: true
end