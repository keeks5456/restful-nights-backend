class CreateTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :trackers do |t|
      t.time :night_times
      t.time :morning_times
      t.time :slept_times
      t.integer :user_id
      t.date :date
      
      t.timestamps
    end
  end
end
