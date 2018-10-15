class AddUserspecIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :userspec_id, :integer
  end
end
