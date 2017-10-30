class AddUserToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :user_id, :integer
  end
end
