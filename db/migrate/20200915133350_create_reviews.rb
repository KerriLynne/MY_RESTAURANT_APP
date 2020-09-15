class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :num_rating
      t.string :comment_rating
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
