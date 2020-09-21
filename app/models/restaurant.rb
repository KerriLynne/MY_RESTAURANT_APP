class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    validates :name, uniqueness: true
    validates_presence_of :name, :cuisine, :neighborhood


end