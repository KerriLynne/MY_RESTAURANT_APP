class AddDateColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :date_of_visit, :string
  end
end
