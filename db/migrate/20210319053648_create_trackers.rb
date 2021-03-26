class CreateTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :trackers do |t|
      t.string :night_times
      t.string :morning_times
      t.string :slept_times
      t.integer :user_id
      t.date :date
      
      t.timestamps
    end
  end
end
