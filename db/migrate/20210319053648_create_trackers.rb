class CreateTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :trackers do |t|
      t.integer :night
      t.integer :morning
      t.integer :slept

      t.timestamps
    end
  end
end
