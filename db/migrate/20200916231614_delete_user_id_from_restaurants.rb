class DeleteUserIdFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :user_id
  end
end
