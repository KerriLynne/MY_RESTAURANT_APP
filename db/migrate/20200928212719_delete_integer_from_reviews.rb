class DeleteIntegerFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :num_rating
  end
end
