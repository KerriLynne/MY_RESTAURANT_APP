class AddFloatToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :num_rating, :float
  end
end
