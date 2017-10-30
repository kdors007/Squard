class AddLeagueToSport < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :league, :string
  end
end
