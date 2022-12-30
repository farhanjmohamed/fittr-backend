class AddClosetIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column(:closets, :user_id, :integer)
  end
end
