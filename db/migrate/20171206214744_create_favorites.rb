class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user
      t.string :sport
      t.string :team

      t.timestamps
    end
  end
end
