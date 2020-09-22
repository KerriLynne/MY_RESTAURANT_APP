class Review < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :user
    validates_presence_of :num_rating, :comment_rating
end