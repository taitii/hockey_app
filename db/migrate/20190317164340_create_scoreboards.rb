class CreateScoreboards < ActiveRecord::Migration[5.2]
  def change
    create_table :scoreboards do |t|
      t.integer :home_team_id
      t.integer :guest_team_id
      t.integer :home_score
      t.integer :guest_score
      t.boolean :overtime

      t.timestamps
    end
  end
end
