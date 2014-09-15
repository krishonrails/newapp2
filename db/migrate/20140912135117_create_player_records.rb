class CreatePlayerRecords < ActiveRecord::Migration
  def change
    create_table :player_records do |t|
      t.string :records
      t.references :player

      t.timestamps
    end
    add_index :player_records, :player_id
  end
end
