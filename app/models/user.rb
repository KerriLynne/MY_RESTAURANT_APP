class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
end