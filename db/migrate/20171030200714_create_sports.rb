class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :NBA
      t.string :NFL

      t.timestamps
    end
  end
end
