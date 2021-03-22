class CreateTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :trackers do |t|
      t.integer :night_times
      t.integer :morning_times
      t.integer :slept_times
      t.integer :user_id

      t.timestamps
    end
  end
end
