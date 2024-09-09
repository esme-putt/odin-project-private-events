class CreateAttendeeTable < ActiveRecord::Migration[7.1]
  def change
    create_table :attendee_tables do |t|
      t.integer :attendee_id
      t.integer :attended_id

      t.timestamps
    end
  end
end
