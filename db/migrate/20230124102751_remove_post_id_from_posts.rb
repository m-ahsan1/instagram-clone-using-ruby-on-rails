class RemovePostIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_id, :integer
  end
end
